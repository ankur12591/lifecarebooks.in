import 'package:book_nest_life_care/app/db/app_preferences.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/routes.dart';
import 'cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppValues.screenWidth = MediaQuery.of(context).size.width;
    AppValues.screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _buildCenterLogo(context),
    );
  }

  /// Build center logo
  Widget _buildCenterLogo(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: buildBlocListener,
      builder: (_, __) {
        return Container(
            width: MediaQuery.of(context).size.width,
            child: Center(child: _buildAvatar(context)));
      },
    );
  }

  /// Build bloc listener widget.
  Future<void> buildBlocListener(
      BuildContext context, SplashState state) async {
    if (state is SplashInitial) {
      context.read<SplashCubit>().navigateToScreen();
    } else if (state is InitialiseComplete) {
      var isUserLoggedIn = await GetIt.I<AppPreferences>().getIsLoggedIn();
      var isAdmin = await GetIt.I<AppPreferences>().getIsAdmin();

      if (isUserLoggedIn) {
        if (isAdmin) {
          context.goNamed(Routes.kAdminDashboardScreen);
        } else {
          context.goNamed(Routes.kWelcomeScreen);

        }
      } else {
        context.goNamed(Routes.kWelcomeScreen);
       }

    }
  }

  /// Returns block provider.
  SplashCubit _buildBlocProvider(context) {
    return SplashCubit();
  }

  /// build app logo
  Widget _buildAvatar(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
          child: SizedBox(
              width: double.infinity,
              child: SvgPicture.asset(
                SVGAssets.splashBgComponent,
                fit: BoxFit.fill,
              )),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      SVGAssets.appLogo,
                      width: 52,
                      height: 52,

                    ),
                    14.horizontalSpace,
                    const Text(
                      AppStrings.lifecare,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                          color: AppColors.colorPrimary,
                          fontFamily: fontFamilySegoeUI,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                30.verticalSpace,
                Text(
                  AppStrings.letThe,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: h20(
                      color: AppColors.colorPrimary, fontWeight: FontWeight.w600),
                ),
                10.verticalSpace,
                Text(
                  AppStrings.embarkOn,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      h14(color: AppColors.colorPrimary, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
