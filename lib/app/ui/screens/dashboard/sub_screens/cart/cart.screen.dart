import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/utils/input_formatters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:book_nest_life_care/app/navigation/routes.dart';
import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/app/ui/custom_widget/common_button.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/my_text_form_field.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:book_nest_life_care/utils/validators.dart';
import 'components/cart_items.dart';
import 'cubit/cart_cubit.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    CartCubit cubit = context.read<CartCubit>();
    return BlocConsumer<CartCubit, CartState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.colorPrimary,
            title: Column(
              children: [
                Text(
                  "Your Cart",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "${cubit.itemCount} items",
                  style: Theme.of(context)
                      .textTheme.labelMedium!
                      .copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
          body: state is CartUpdated && cubit.itemCount != 0
              ? SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20, right: 20),
                  child: Text(
                    "${cubit.itemCount} Items in cart",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: cubit.items.length,
                  itemBuilder: (context, index) {
                    var cartItem = cubit.items.values.toList()[index];
                    return CartItems(
                      id: cartItem.id!,
                      price: cartItem.price!,
                      quantity: cartItem.quantity!,
                      title: cartItem.title!,
                      image: cartItem.image!,
                      productId: cubit.items.keys.toList()[index],
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20, right: 20),
                  child: Text(
                    "Payment Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20, right: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.grayf4,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total items",
                              style:
                              TextStyle(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "${cubit.itemCount}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 1,
                            color: AppColors.grayB5,
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total amount",
                              style:
                              TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${cubit.totalAmount.toStringAsFixed(2)}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.3),
              ],
            ),
          )
              : Center(
            child: Container(
              child: Text(
                "No items in cart",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          bottomSheet: state is CartUpdated && cubit.itemCount != 0
              ? Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                backgroundColor: AppColors.colorPrimary,
              ),
              onPressed: () {
                // Handle the checkout action
                cubit.clear();
                // Navigate to Success Screen
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  "Check Out",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
              : null,
        );
      },
    );
  }

  void buildBlocListener(BuildContext context, CartState state) {
    if (state is CartLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is CartError) {
      OverlayLoadingProgress.stop();
      Utils.showErrorMessage(context: context, message: state.error);
    } else if (state is APISuccessForCart) {
      OverlayLoadingProgress.stop();
    }
  }
}


// import 'package:book_nest_life_care/config/app_strings.dart';
// import 'package:book_nest_life_care/utils/input_formatters.dart';
// import 'package:flutter/material.dart';
//
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
//
// import 'package:book_nest_life_care/app/navigation/routes.dart';
// import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
// import 'package:book_nest_life_care/app/ui/custom_widget/common_button.dart';
// import 'package:book_nest_life_care/config/app_assets.dart';
// import 'package:book_nest_life_care/config/app_colors.dart';
// import 'package:book_nest_life_care/config/app_values.dart';
// import 'package:book_nest_life_care/config/text_styles.dart';
// import 'package:book_nest_life_care/config/utils.dart';
// import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';
// import 'package:book_nest_life_care/utils/extensions.dart';
// import 'package:book_nest_life_care/utils/my_text_form_field.dart';
// import 'package:book_nest_life_care/utils/ui_components.dart';
// import 'package:book_nest_life_care/utils/validators.dart';
// import 'cubit/cart_cubit.dart';
//
// class CartScreen extends StatefulWidget {
//   const CartScreen({
//     super.key,
//   });
//
//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> with AppBarMixin {
//   @override
//   void initState() {
//     super.initState();
//     context.read<CartCubit>().getData(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     CartCubit cubit = context.read<CartCubit>();
//     return BlocConsumer<CartCubit, CartState>(
//       listener: buildBlocListener,
//       builder: (context, state) {
//         return Scaffold(
//           body: SingleChildScrollView(
//             child: Container(),
//           ),
//         );
//       },
//     );
//   }
//
//   void buildBlocListener(BuildContext context, CartState state) {
//     if (state is CartLoading) {
//       OverlayLoadingProgress.start(context);
//     } else if (state is CartError) {
//       OverlayLoadingProgress.stop();
//
//       Utils.showErrorMessage(context: context, message: state.error);
//     } else if (state is APISuccessForCart) {
//       OverlayLoadingProgress.stop();
//     }
//   }
// }
