import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:book_nest_life_care/app/navigation/routes.dart';
import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';
import 'package:book_nest_life_care/utils/extensions.dart';

import 'components/class_card.dart';
import 'cubit/category_cubit.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> with AppBarMixin {
  final bgImage = const AssetImage("assets/images/book_wallpaper.jpg");

  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    CategoryCubit cubit = context.read<CategoryCubit>();
    return BlocConsumer<CategoryCubit, CategoryState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.only(
                          top: AppValues.screenHeight * .12,
                          left: AppValues.screenWidth * .1,
                          right: AppValues.screenWidth * .02),
                      // height: AppValues.screenHeight * .48,
                      height: 320,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssets.kBooksWallpaper),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    12.verticalSpace,
                    cubit.gradeLevelNameList != null &&
                            cubit.gradeLevelNameList!.isNotEmpty
                        ? Padding(
                            padding: const EdgeInsets.only(
                                top: 320, left: 20, right: 20),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height - 300,
                              child: ListView.separated(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                itemCount: cubit.gradeLevelNameList!.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 10),
                                itemBuilder: (context, index) {
                                  final gradeLevel =
                                      cubit.gradeLevelNameList?[index];
                                  return ChapterCard(
                                    name: gradeLevel,
                                    // chapterName: gradeLevel.name,
                                    press: () {
                                      context.pushNamed(Routes
                                          .kClassBooksScreen); // Update this based on your routing logic
                                    },
                                  );
                                },
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                40.verticalSpace
              ],
            ),
          ),
        );
      },
    );
  }

  void buildBlocListener(BuildContext context, CategoryState state) {
    if (state is CategoryLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is CategoryError) {
      OverlayLoadingProgress.stop();

      Utils.showErrorMessage(context: context, message: state.error);
    } /*else if (state is APISuccessForCategory) {
      OverlayLoadingProgress.stop();
    }*/
  }
}
