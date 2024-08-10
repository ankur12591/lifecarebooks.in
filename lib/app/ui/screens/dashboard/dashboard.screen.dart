import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/utils/input_formatters.dart';
import 'package:flutter/material.dart';

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
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'cubit/dashboard_cubit.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<DashboardCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    DashboardCubit cubit = context.read<DashboardCubit>();
    return BlocConsumer<DashboardCubit, DashboardState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: PersistentTabView(
                  tabs: cubit.navBarsItems(),
                  resizeToAvoidBottomInset: true,
                  controller: context.read<DashboardCubit>().controller,
                  gestureNavigationEnabled: true,
                  stateManagement: false,
                  navBarHeight: 64,
                  onTabChanged: (index) => cubit.changeTab(context, index),
                  navBarBuilder: (config) {
                    return Style4BottomNavBar(
                      navBarDecoration: const NavBarDecoration(
                          padding: EdgeInsets.zero,
                          border: Border(
                              top: BorderSide(
                                color: AppColors.greyE2,
                                width: 3,
                              ))),
                      navBarConfig: config,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void buildBlocListener(BuildContext context, DashboardState state) {
    if (state is DashboardLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is DashboardError) {
      OverlayLoadingProgress.stop();

      Utils.showErrorMessage(context: context, message: state.error);
    } else if (state is APISuccessForDashboard) {
      OverlayLoadingProgress.stop();
    }
  }
}
