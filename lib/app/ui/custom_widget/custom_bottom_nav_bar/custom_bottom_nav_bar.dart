import 'package:book_nest_life_care/app/ui/custom_widget/custom_bottom_nav_bar/custom_bottom_nav_bar_cubit.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavBar extends StatelessWidget {
    final PersistentTabController  controller;
  final ValueChanged<int> onTabSelected;

  BottomNavBar({Key? key, required this.controller, required this.onTabSelected}) : super(key: key);

  List<PersistentTabConfig> _navBarsItems(BuildContext context) => [
    // PersistentTabConfig(
    //   item: ItemConfig(
    //     icon: SVGAssets.dashboardIcon.toSvg,
    //     title: context.read<CustomBottomNavBarCubit>().languageDetailsData?.messages?.fEDASHBOARD?.dASHBOARD ?? AppStrings.dashboard,
    //     activeForegroundColor: AppColors.blueA5,
    //     inactiveForegroundColor: AppColors.black11,
    //   ),
    //   screen:
    // ),
    // PersistentBottomNavBarItem(
    //   icon: SVGAssets.profileIcon.toSvg,
    //   title: AppStrings.profile,
    //   activeColorPrimary: AppColors.blueA5,
    //   inactiveColorPrimary: AppColors.black11,
    // ),
    // PersistentBottomNavBarItem(
    //   icon: SVGAssets.messagesIcon.toSvg,
    //   title: AppStrings.messages,
    //   activeColorPrimary: AppColors.blueA5,
    //   inactiveColorPrimary: AppColors.black11,
    // ),
    // PersistentBottomNavBarItem(
    //   icon: SVGAssets.settingsIcon.toSvg,
    //   title: context.read<CustomBottomNavBarCubit>().languageDetailsData?.messages?.fESYSTEMSETTINGS?.sETTINGS ?? AppStrings.settings,
    //   activeColorPrimary: AppColors.blueA5,
    //   inactiveColorPrimary: AppColors.black11,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    CustomBottomNavBarCubit cubit = context.read<CustomBottomNavBarCubit>();

    return Container();
    // return PersistentTabView(
    //   context,
    //   controller: controller,
    //   screens: cubit.destinations(),
    //   tabs: _navBarsItems(context),
    //   navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : kBottomNavigationBarHeight + 14,
    //   resizeToAvoidBottomInset: true,
    //   backgroundColor: AppColors.white,
    //   decoration: const NavBarDecoration(
    //     colorBehindNavBar: AppColors.white,
    //     border: Border(top: BorderSide(color: AppColors.greyD9, width: 3)),
    //   ),
    //   navBarStyle: NavBarStyle.style3,
    //   stateManagement: true,
    //   onItemSelected: (int value) {
    //     cubit.changeTab(value);
    //     onTabSelected(value); // Notify parent of tab change
    //   },
    // );
  }
}

// class BottomNavBar extends StatelessWidget {
//   final PersistentTabController controller;
//
//   BottomNavBar({Key? key, required this.controller}) : super(key: key);
//
//   List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) => [
//     PersistentBottomNavBarItem(
//       icon: SVGAssets.dashboardIcon.toSvg,
//       title: context.read<HomeCubit>().languageDetailsData?.messages?.fEDASHBOARD?.dASHBOARD ?? AppStrings.dashboard,
//       activeColorPrimary: AppColors.blueA5,
//       inactiveColorPrimary: AppColors.black11,
//     ),
//     PersistentBottomNavBarItem(
//       icon: SVGAssets.profileIcon.toSvg,
//       title: AppStrings.profile,
//       activeColorPrimary: AppColors.blueA5,
//       inactiveColorPrimary: AppColors.black11,
//     ),
//     PersistentBottomNavBarItem(
//       icon: SVGAssets.messagesIcon.toSvg,
//       title: AppStrings.messages,
//       activeColorPrimary: AppColors.blueA5,
//       inactiveColorPrimary: AppColors.black11,
//     ),
//     PersistentBottomNavBarItem(
//       icon: SVGAssets.settingsIcon.toSvg,
//       title: context.read<HomeCubit>().languageDetailsData?.messages?.fESYSTEMSETTINGS?.sETTINGS ?? AppStrings.settings,
//       activeColorPrimary: AppColors.blueA5,
//       inactiveColorPrimary: AppColors.black11,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     HomeCubit cubit = context.read<HomeCubit>();
//
//     return PersistentTabView(
//       context,
//       controller: controller,
//       screens: cubit.destinations(),
//       items: _navBarsItems(context),
//       navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : kBottomNavigationBarHeight + 14,
//       resizeToAvoidBottomInset: true,
//       backgroundColor: AppColors.white,
//       decoration: const NavBarDecoration(
//         colorBehindNavBar: AppColors.white,
//         border: Border(top: BorderSide(color: AppColors.greyD9, width: 3)),
//       ),
//       navBarStyle: NavBarStyle.style3,
//       stateManagement: true,
//       onItemSelected: (int value) {
//         cubit.changeTab(value);
//       },
//     );
//   }
// }
