import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../config/app_colors.dart';
import '../cubit/cart_cubit.dart';

class CartItems extends StatefulWidget {
  final String id;
  final int productId;
  final double price;
  final int quantity;
  final String title;
  final String image;

  CartItems({
    required this.id,
    required this.price,
    required this.quantity,
    required this.title,
    required this.productId,
    required this.image,
  });

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    int numOfItems = widget.quantity;
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartUpdated) {
          numOfItems = state.items[widget.productId]?.quantity ?? widget.quantity;
        }
      },
      builder: (context, state) {
        var cartCubit = context.read<CartCubit>();
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              cartCubit.removeItem(widget.productId);
            },
            background: Container(
              color: AppColors.red00,
              child: Icon(
                Icons.delete,
                color: Colors.white,
                size: 40,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.grayf4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      child: Image.network(
                        widget.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: TextStyle(color: Colors.black, fontSize: 16),
                                maxLines: 2,
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      AppAssets.rupeeLogo,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: "${widget.price}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.black,
                                          fontSize: 18),
                                      children: [
                                        TextSpan(
                                            text: "  x  ${widget.quantity}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: AppValues.screenWidth * 0.15,
                          ),
                          Chip(
                            backgroundColor: AppColors.colorPrimary,
                            label: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                children: [
                                  Text(
                                    '${(widget.price * widget.quantity)}',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            buildOutlineButton(
                              icon: Icons.remove,
                              press: () {
                                if (numOfItems > 1) {
                                  cartCubit.updateItemQuantity(widget.productId, numOfItems - 1);
                                }
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20 / 2),
                              child: Text(
                                numOfItems.toString().padLeft(2, "0"),
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                            buildOutlineButton(
                              icon: Icons.add,
                              press: () {
                                cartCubit.updateItemQuantity(widget.productId, numOfItems + 1);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      width: 30,
      height: 30,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: press,
        child: Icon(
          icon,
          size: 18,
        ),
      ),
    );
  }
}
