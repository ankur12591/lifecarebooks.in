import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:book_nest_life_care/app/navigation/routes.dart';
import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';

import 'cubit/admin_dashboard_cubit.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({
    super.key,
  });

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen>
    with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<AdminDashboardCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    AdminDashboardCubit cubit = context.read<AdminDashboardCubit>();
    return BlocConsumer<AdminDashboardCubit, AdminDashboardState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(
            title: "Dashboard",
            context: context,
            actions: [
              InkWell(
                onTap: (){
                  cubit.logout();
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: SvgPicture.asset(
                    height: 25,
                    width: 25,
                    SVGAssets.logoutIcon,
                    color: AppColors.white,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
            // requireNotificationIcon: true,
            // notificationCount: "2",
          ),
          body: SingleChildScrollView(
            child: Container(),
          ),
        );
      },
    );
  }

  void buildBlocListener(BuildContext context, AdminDashboardState state) {
    if (state is AdminDashboardLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is AdminDashboardError) {
      OverlayLoadingProgress.stop();

      Utils.showErrorMessage(context: context, message: state.error);
    } else if (state is APISuccessForAdminDashboard) {
      OverlayLoadingProgress.stop();
    } else {
      context.goNamed(Routes.kDashboardScreen);
    }
  }
}
