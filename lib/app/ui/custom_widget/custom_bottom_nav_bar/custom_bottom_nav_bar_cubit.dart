import 'package:book_nest_life_care/app/db/app_preferences.dart';
// import 'package:book_nest_life_care/app/ui/screens/home/model/language_details_response_model.dart';
// import 'package:book_nest_life_care/app/ui/screens/home/sub_screens/profile/my_profile_screen.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../../config/utils.dart';

part 'custom_bottom_nav_bar_state.dart';

class CustomBottomNavBarCubit extends Cubit<CustomBottomNavBarState> {
  CustomBottomNavBarCubit() : super(CustomBottomNavBarInitial()) {
    emit(CustomBottomNavBarTabLoaded(tabIndex: null));
  }

  int? tabIndex;
  PersistentTabController controller = PersistentTabController();


  /// Method Get Data
  ///
  Future<void> getData(BuildContext context) async {

    controller = PersistentTabController(initialIndex: 4);
    print("tabIndex========$tabIndex");
    controller.addListener(() {
      Utils.dismissKeyboard(context);
    });
  }

  /// Change Tab Method
  ///
  void changeTab(int tabIndex) {
    print("tabIndex========$tabIndex");
    emit(CustomBottomNavBarTabLoaded(tabIndex: tabIndex));
  }

  List<Widget> destinations() {
    return [
      const Center(child: Text("Dashboard")),
      // const MyProfileScreen(),
      const Center(child: Text("Messages")),
      const Center(child: Text("Settings")),
    ];
  }
  //
  // List<PersistentTabConfig> navBarsItems() => [
  //       PersistentTabConfig(
  //         item: ItemConfig(
  //           icon: SVGAssets.dashboardIcon.toSvg,
  //           title: languageDetailsData?.messages?.fEDASHBOARD?.dASHBOARD ??
  //               AppStrings.dashboard,
  //           activeForegroundColor: AppColors.blueA5,
  //           inactiveForegroundColor: AppColors.black11,
  //         ),
  //         screen: const Center(child: Text("Dashboard")),
  //       ),
  //       PersistentTabConfig(
  //         item: ItemConfig(
  //           icon: SVGAssets.dashboardIcon.toSvg,
  //           title: languageDetailsData?.messages?.fEDASHBOARD?.dASHBOARD ??
  //               AppStrings.dashboard,
  //           activeForegroundColor: AppColors.blueA5,
  //           inactiveForegroundColor: AppColors.black11,
  //         ),
  //         screen: MyProfileScreen(),
  //       ),
  //       PersistentTabConfig(
  //         item: ItemConfig(
  //           icon: SVGAssets.dashboardIcon.toSvg,
  //           title: languageDetailsData?.messages?.fEDASHBOARD?.dASHBOARD ??
  //               AppStrings.dashboard,
  //           activeForegroundColor: AppColors.blueA5,
  //           inactiveForegroundColor: AppColors.black11,
  //         ),
  //         screen: const Center(child: Text("Messages")),
  //       ),
  //       PersistentTabConfig(
  //         item: ItemConfig(
  //           icon: SVGAssets.settingsIcon.toSvg,
  //           title: languageDetailsData?.messages?.fEDASHBOARD?.dASHBOARD ??
  //               AppStrings.settings,
  //           activeForegroundColor: AppColors.blueA5,
  //           inactiveForegroundColor: AppColors.black11,
  //         ),
  //         screen: const Center(child: Text("Settings")),
  //       ),
  //     ];
}
