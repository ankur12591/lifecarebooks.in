import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // add this

  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = context.read<HomeCubit>();
    return BlocConsumer<HomeCubit, HomeState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          key: _key,
            appBar: AppBar(
              backgroundColor: AppColors.colorPrimary,
              title: Text(
                "Home",
                    style: h24(
                      color: AppColors.white
                    ),
              ),
            // iconTheme: IconThemeData(color: AppColors.black),
        // centerTitle: true,
        // brightness: Brightness.light,
        ),

          // drawer: DrawerView(),
          body: SingleChildScrollView(
            child: Container(
              color: AppColors.white,
              child: Column(
                children: [
                  18.verticalSpace,
                  carousalSlider(),
                  18.verticalSpace,
                  _buildCategorySection(cubit),
                  _buildTopCategorySection(cubit, "Top Category"),
                  _buildTopCategorySection(cubit, "CBSE"),
                  _buildTopCategorySection(cubit, "GSEB"),
                  _buildTopCategorySection(cubit, "NCERT Books"),
                  Text(
                    AppStrings.textForgotPassword,
                    style: h12(
                      fontWeight: FontWeight.w700,
                      color: AppColors.colorPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void buildBlocListener(BuildContext context, HomeState state) {
    if (state is HomeLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is HomeError) {
      OverlayLoadingProgress.stop();
      Utils.showErrorMessage(context: context, message: state.error);
    } else if (state is HomeSuccess) {
      OverlayLoadingProgress.stop();
    }
  }

  Widget carousalSlider() {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            // image: DecorationImage(
            //   image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/81yYeKc+U7L.jpg"),
            //   fit: BoxFit.contain,
            // ),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.colorPrimary.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.centerLeft,
                width: AppValues.screenWidth,
                child: Image.network(
                    "https://www.pngkey.com/png/full/443-4432695_school-library-online-book-store.png"),
              ),
              Positioned(
                // top: (((1.16 * AppValues.screenWidth) / 2) - 50),
                top: 0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "School Book Store",
                        textScaleFactor: 1.0,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18.0,
                          fontFamily: 'SofiaProMedium',
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // top: (((1.16 * AppValues.screenWidth) / 2) - 50),
                top: AppValues.screenWidth * 0.20,
                left: 0.0,
                right: 0.0,
                child: InkWell(
                  onTap: () {
                    // Get.toNamed(Routes.SCHOOLBOOKS);
                  },
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.grayf4,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Buy Now",
                              textScaleFactor: 1.0,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: 14.0,
                                fontFamily: 'SofiaProMedium',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //2nd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            // image: DecorationImage(
            //   image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/81yYeKc+U7L.jpg"),
            //   fit: BoxFit.contain,
            // ),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.orange0A,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.centerLeft,
                width: AppValues.screenWidth,
                child: Image.asset(
                  "assets/images/stationery_image.png",
                  height: AppValues.screenWidth / 2,
                ),
              ),
              Positioned(
                // top: (((1.16 * AppValues.screenWidth) / 2) - 50),
                top: 0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "School Stationery",
                        textScaleFactor: 1.0,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18.0,
                          fontFamily: 'SofiaProMedium',
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // top: (((1.16 * AppValues.screenWidth) / 2) - 50),
                top: AppValues.screenWidth * 0.20,
                left: 0.0,
                right: 0.0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "20% Off",
                        textScaleFactor: 1.0,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 24.0,
                          fontFamily: 'SofiaProMedium',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Get.toNamed(Routes.SCHOOLBOOKS);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.grayf4,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Buy Now",
                                    textScaleFactor: 1.0,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 14.0,
                                      fontFamily: 'SofiaProMedium',
                                      // fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: ((1.16 * AppValues.screenWidth) / 2),
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 2000),
        // viewportFraction: 0.8,
        viewportFraction: 1,
      ),
    );
  }


  Widget _buildCategorySection(HomeCubit cubit) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: AppValues.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: AppColors.blue5F6,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 14.0,),
          child: Container(
            height: 80,
            // color: Colors.orange,
            child: ListView.separated(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: cubit.categoryProducts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) => Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        cubit.categoryProducts[index].imageUrl ?? "",
                        color: AppColors.black.withOpacity(0.9),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    cubit.categoryProducts[index].title ?? "",
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: AppColors.black22),
                  ),
                ],
              ),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 20);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopCategorySection(HomeCubit cubit, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style:  h20(
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Text(
                          "View All",
                          style: h14(
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        size: 16,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          18.verticalSpace,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  height: 154,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: cubit.topCategoryProducts.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) => Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: AppColors.gray70.withOpacity(0.2),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                            child: Image.network(
                              cubit.topCategoryProducts[index].imageUrl ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          cubit.topCategoryProducts[index].title ?? "",
                          style:  h14(),
                        ),
                      ],
                    ),
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 20);
                    },
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
