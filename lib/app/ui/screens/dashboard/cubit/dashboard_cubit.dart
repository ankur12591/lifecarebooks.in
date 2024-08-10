import 'package:bloc/bloc.dart';
import 'package:book_nest_life_care/app/ui/screens/dashboard/sub_screens/category/category.screen.dart';
import 'package:book_nest_life_care/app/ui/screens/dashboard/sub_screens/home/home.screen.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../db/app_preferences.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  // LeaveManagementRepository repository;

  DashboardCubit(//     {
      //   required this.repository,
      // }
      )
      : super(DashboardInitial());

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  FocusNode emailFn = FocusNode();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFn = FocusNode();

  bool rememberMe = false;

  int selectedItemIndex = 0;

  bool isAdmin = false;
  bool isEmail = true;
  bool isLastPage = false;
  bool showSuffixIcon = false;

  // final debouncer = Debouncer(milliseconds: 1000);
  //
  // LanguageDetailsData? languageDetailsData;
  //
  //
  // var selectedLeaveType = LeaveTypeData();
  // var selectedStatusType = StatusDetailsData();

  String selectedLeaveTypeValue = '';
  String selectedStatusValue = '';

  int tabIndex = 0;
  PersistentTabController controller = PersistentTabController(
      initialIndex: 0, clearHistoryOnInitialIndex: true);

  Future<void> getData(BuildContext context) async {
    isAdmin = await GetIt.I<AppPreferences>().getIsAdmin() ?? false;

    emit(DashboardInit());
  }

  /// Change Tab Method
  ///
  void changeTab(BuildContext context, int tabIndex) {
    controller.jumpToTab(tabIndex);
    controller.notifyListeners();
    emit(DashboardInitial());
    emit(DashboardTabLoaded(tabIndex: tabIndex));
  }

  List<PersistentTabConfig> navBarsItems() => [
        PersistentTabConfig(
          item: ItemConfig(
            inactiveIcon: SvgPicture.asset(
              SVGAssets.dashboardIcon,
              width: 24,
              height: 24,
              color: CupertinoColors.systemGrey,
            ),
            icon: SvgPicture.asset(
              SVGAssets.dashboardIcon,
              width: 24,
              height: 24,
              color: AppColors.colorPrimary,
            ),
            // SVGAssets.dashboardIcon.toSvg,
            title: AppStrings.dashboard,
            activeForegroundColor: AppColors.colorPrimary,
            inactiveForegroundColor: AppColors.black11,
          ),
          screen: HomeView(),
        ),
        PersistentTabConfig(
          item: ItemConfig(
            inactiveIcon: SvgPicture.asset(
              isAdmin ? SVGAssets.categoryIcon : SVGAssets.categoryIcon,
              width: 24,
              height: 24,
              color: CupertinoColors.systemGrey,
            ),
            icon: SvgPicture.asset(
              SVGAssets.categoryIcon,
              width: 24,
              height: 24,
              color: AppColors.colorPrimary,
            ),
            // SVGAssets.messagesIcon.toSvg,
            title: AppStrings.category,
            activeForegroundColor: AppColors.colorPrimary,
            inactiveForegroundColor: AppColors.black11,
          ),
          screen: const CategoryScreen(),
        ),

        PersistentTabConfig(
          item: ItemConfig(
            inactiveIcon: SvgPicture.asset(
              isAdmin ? SVGAssets.cartIcon : SVGAssets.cartIcon,
              width: 24,
              height: 24,
              color: CupertinoColors.systemGrey,
            ),
            icon: SvgPicture.asset(
              SVGAssets.cartIcon,
              width: 24,
              height: 24,
              color: AppColors.colorPrimary,
            ),
            title: AppStrings.cart,
            activeForegroundColor: AppColors.colorPrimary,
            inactiveForegroundColor: AppColors.black11,
          ),
          screen: const Center(child: Text("Cart")),
        ),
    PersistentTabConfig(
      item: ItemConfig(
        inactiveIcon: SvgPicture.asset(
          SVGAssets.profileIcon,
          width: 24,
          height: 24,
          color: CupertinoColors.systemGrey,
        ),
        icon: SvgPicture.asset(
          SVGAssets.profileIcon,
          width: 24,
          height: 24,
          color: AppColors.colorPrimary,
        ),
        // SVGAssets.profileIcon.toSvg,
        title: AppStrings.profile,
        activeForegroundColor: AppColors.colorPrimary,
        inactiveForegroundColor: AppColors.black11,
      ),
      screen: const Center(child: Text("My Profile")),
      // screen: MyProfileScreen(),
    ),

  ];
}
