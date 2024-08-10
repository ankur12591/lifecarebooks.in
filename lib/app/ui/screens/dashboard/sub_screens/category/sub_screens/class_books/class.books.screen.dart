import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/utils/input_formatters.dart';
import 'package:flutter/material.dart';


import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
import '../../../../../../../bloc/product_cubit.dart';
import '../../../cart/cubit/cart_cubit.dart';
import 'components/booksGridNew.dart';
import 'components/booksGridWhite.dart';
import 'cubit/class_books_cubit.dart';

enum FilterOptions {
  FAVOURITES,
  ALL,
}

class ClassBooksScreen extends StatefulWidget {
  const ClassBooksScreen({
    super.key,
  });

  @override
  State<ClassBooksScreen> createState() => _ClassBooksScreenState();
}

class _ClassBooksScreenState extends State<ClassBooksScreen> with AppBarMixin {
  var _showOnlyFavourites = false;

  @override
  void initState() {
    super.initState();
    context.read<ClassBooksCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    ClassBooksCubit cubit = context.read<ClassBooksCubit>();
    return BlocConsumer<ClassBooksCubit, ClassBooksState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: AppColors.black),
            centerTitle: true,
            // brightness: Brightness.light,
            backgroundColor: AppColors.white,
            title: Text(
              "Class 1",
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state)  {
                    return PopupMenuButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: AppColors.black,
                        ),
                        onSelected: (FilterOptions selectedValue) {
                          if (selectedValue == FilterOptions.FAVOURITES) {
                            _showOnlyFavourites = true;
                            print(_showOnlyFavourites);
                          } else {
                            _showOnlyFavourites = false;
                          }
                        },
                        itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Text("Only Favourites"),
                            value: FilterOptions.FAVOURITES,
                          ),
                          PopupMenuItem(
                            child: Text("Show All"),
                            value: FilterOptions.ALL,
                          )
                        ]);
                  }),
        BlocBuilder<CartCubit, CartState>(
        builder: (context, state)  {
                    return
                      badges.Badge(
                        position: badges.BadgePosition.topEnd(top: -5, end: 1),
                        showBadge: true,
                        badgeAnimation: const badges.BadgeAnimation.fade(),
                        badgeContent: Text(
                          context.read<CartCubit>().itemCount.toString(),
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: h12().copyWith(
                              fontWeight: FontWeight.w700, color: Colors.white),
                        ),
                        badgeStyle: const badges.BadgeStyle(
                          badgeColor: AppColors.red00,
                        ),
                        child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Theme.of(context).accentColor,
                                border:
                                Border.all(color: AppColors.greyE9, width: 1)),
                            child: IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                ),
                                onPressed: () {
                                  context.pushNamed(Routes.kCartScreen);
                                })),
                      );
                    // Badge(
                    //   child: IconButton(
                    //       icon: Icon(
                    //         Icons.shopping_cart,
                    //       ),
                    //       onPressed: () {
                    //         context.pushNamed(Routes.kCartScreen);
                    //       }),
                    //   value: cartController.itemCount.toString(),
                    //   color: Theme.of(context).accentColor,
                    // );
                  })
            ],
          ),

          body:
          // BooksGridWhite(
          BooksGridNew(
            showFavourites: _showOnlyFavourites,
          ),
        );
      },
    );
  }

  void buildBlocListener(BuildContext context, ClassBooksState state) {
    if (state is ClassBooksLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is ClassBooksError) {
      OverlayLoadingProgress.stop();

      Utils.showErrorMessage(context: context, message: state.error);
    } else if (state is APISuccessForClassBooks) {
      OverlayLoadingProgress.stop();
    }
  }
}
