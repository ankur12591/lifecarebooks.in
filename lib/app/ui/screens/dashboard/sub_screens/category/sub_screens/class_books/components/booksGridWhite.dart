import 'package:book_nest_life_care/app/bloc/product_cubit.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../config/app_colors.dart';
import '../../../../cart/cubit/cart_cubit.dart';

class BooksGridWhite extends StatelessWidget {
  final bool showFavourites;

  final double? width;

  BooksGridWhite({
    required this.showFavourites,
     this.width,
  });


  @override
  Widget build(BuildContext context) {
    final ProductCubit productController = context.read<ProductCubit>();
    final CartCubit cartController = context.read<CartCubit>();


    return GridView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: productController.items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3.2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (context, index) {
        return BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) => Container(
            width: this.width,
            decoration: BoxDecoration(
              color: AppColors.grayf4,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.to(
                    //   ProductDetailsScreen(
                    //     id: productController.items[index].id,
                    //     title: productController.items[index].title,
                    //     price: productController.items[index].price,
                    //     image: productController.items[index].imageUrl,
                    //     description: productController.items[index].description,
                    //   ),
                    // );
                  },
                  child: Container(
                      width: this.width,
                        height: AppValues.screenWidth * 0.4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.network(
                          productController.items[index].imageUrl!,
                          height: AppValues.screenWidth * 0.4,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Container(

                  //  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 8),
                        child: Text(
                          productController.items[index].title!,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8,),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      AppAssets.rupeeLogo,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  Text(
                                    "${productController.items[index].price}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.white,
                                          fontSize: 20),
                                    ),
                                ],
                              ),

                        BlocBuilder<ProductCubit, ProductState>(
                            builder: (context, state)  {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: AppColors.white
                                        ),
                                        height: 30,
                                        width: 30,
                                        child: IconButton(
                                          padding: EdgeInsets.all(7),
                                          iconSize: 15,
                                          icon: Icon(Icons.shopping_cart),
                                          onPressed: () {
                                            cartController.addItem(
                                              productId:
                                                  productController.items[index].id,
                                              price: productController
                                                  .items[index].price,
                                              title: productController
                                                  .items[index].title,
                                              image: productController
                                                  .items[index].imageUrl,
                                            );
                                          },
                                          color: AppColors.colorPrimary,
                                        ),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //     ClipRRect(
          //   borderRadius: BorderRadius.circular(10),
          //   child: GridTile(
          //     child: GestureDetector(
          //       onTap: () {
          //         Get.to(
          //           ProductDetailsScreen(
          //            id: productController.items[index].id,
          //             title: productController.items[index].title,
          //             price: productController.items[index].price,
          //             image: productController.items[index].imageUrl,
          //             description: productController.items[index].description,
          //           ),
          //         );
          //       },
          //       child: Image.network(
          //         productController.items[index].imageUrl,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     footer: GridTileBar(
          //       backgroundColor: Colors.black87,
          //       leading: IconButton(
          //         icon: Icon(
          //           productController.items[index].isFavourite == true
          //               ? Icons.favorite
          //               : Icons.favorite_border,
          //           color: Theme.of(context).accentColor,
          //         ),
          //         onPressed: () {
          //           productController.toggleFavouriteStatus(index);
          //         },
          //       ),
          //       title: Text(
          //         productController.items[index].title,
          //         textAlign: TextAlign.center,
          //       ),
          //       trailing: GetBuilder<CartController>(
          //           init: CartController(),
          //           builder: (cont) {
          //             return IconButton(
          //               icon: Icon(Icons.shopping_cart),
          //               onPressed: () {
          //                 cartController.addItem(
          //                     productId: productController.items[index].id,
          //                     price: productController.items[index].price,
          //                     title: productController.items[index].title,
          //                     image: productController.items[index].imageUrl,
          //                     );
          //               },
          //               color: Theme.of(context).accentColor,
          //             );
          //           }),
          //     ),
          //   ),
          // ),
        );
      },
    );
  }
}
