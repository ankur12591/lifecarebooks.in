import 'package:book_nest_life_care/app/ui/screens/welcome/cubit/welcome_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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

import '../../../../config/app_strings.dart';
import '../../../../utils/input_formatters.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<WelcomeCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    WelcomeCubit cubit = context.read<WelcomeCubit>();
    return BlocConsumer<WelcomeCubit, WelcomeState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: SingleChildScrollView(
            child: Form(
              key: cubit.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 30.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: AppValues.screenHeight * 0.085),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                   SizedBox(
                                    height: 80,
                                    width: 80,
                                    //  color: Colors.green,
                                    child: SvgPicture.asset(
                                      SVGAssets.appLogo,
                                      // width: 52,
                                      // height: 52,

                                    ),

                                    // Image(
                                    //     // height: 80,
                                    //     // width: 80,
                                    //     color: AppColors.colorPrimary,
                                    //     image: AssetImage(AppAssets.bookLogo)),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 0.0, bottom: 10),
                                    child: Center(
                                      child: Text(
                                        "lifecarebooks.in",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: AppColors.colorPrimary,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: AppColors.colorPrimary,
                                    height: 0.5,
                                    width: AppValues.screenWidth / 4,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AppValues.screenWidth / 12,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 0.0),
                              child: Text(
                                "Login",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.colorPrimary),
                              ),
                            ),
                            16.verticalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Email
                                ///
                                MyTextFormField(
                                    controller: cubit.emailController,
                                    focusNode: cubit.emailFn,
                                    isShowFieldName: false,
                                    obscureText: false,
                                    isMandatory: true,
                                    fieldHint: AppStrings.textEmail,
                                    fillColor: AppColors.greyFB,
                                    borderColor: AppColors.greyFB,
                                    fieldHintColor: AppColors.colorPrimary,
                                    textInputAction: TextInputAction.next,
                                    inputFormatters: [
                                      InputFormatters()
                                          .emojiRestrictInputFormatter
                                    ],
                                    onFieldSubmitted: (v) {
                                      FocusScope.of(context)
                                          .requestFocus(cubit.passwordFn);
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    prefixIcon: SVGAssets.emailPrefixIcon.toSvg,
                                    validator: (value) {
                                      return validateEmail(
                                        context,
                                        value,
                                        "Email is required*.",
                                        "Please enter valid email.",
                                      );
                                    },
                                    readOnly: false),
                                20.verticalSpace,

                                /// Password
                                ///
                                MyTextFormField(
                                    controller: cubit.passwordController,
                                    focusNode: cubit.passwordFn,
                                    isShowFieldName: false,
                                    obscureText: true,
                                    isMandatory: true,
                                    fieldHint: AppStrings.textPassword,
                                    fillColor: AppColors.greyFB,
                                    borderColor: AppColors.greyFB,
                                    fieldHintColor: AppColors.colorPrimary,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      InputFormatters()
                                          .emojiRestrictInputFormatter,
                                    ],
                                    isVisibilityForLogin: true,
                                    onFieldSubmitted: (v) {
                                      FocusScope.of(context).unfocus();
                                    },
                                    keyboardType: TextInputType.visiblePassword,
                                    prefixIcon:
                                        SVGAssets.passwordPrefixIcon.toSvg,
                                    validator: (value) {
                                      return validateEmptyPassword(
                                        context,
                                        value,
                                        "Password is required.",
                                      );
                                    },
                                    readOnly: false),
                                10.verticalSpace,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    /// Forgot Password Text
                                    ///
                                    UIComponent.customInkWellWidget(
                                      onTap: () {
                                        context.pushNamed(
                                            Routes.kForgotPasswordScreen);
                                      },
                                      child: Text(
                                        AppStrings.textForgotPassword,
                                        style: h12(
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.colorPrimary),
                                      ),
                                    ),
                                  ],
                                ),
                                26.verticalSpace,

                                /// Login Button
                                ///
                                CommonButton(
                                    title: AppStrings.signIn,
                                    onTap: () {
                                      _onLoginClick(context);
                                    })
                              ],
                            ),
                            SizedBox(
                              height: AppValues.screenHeight / 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(AppStrings.dontHaveAccount,
                            style: h16(
                                context: context,
                                color: AppColors.black,
                                // AppConstants.fontMedium,
                                fontWeight: FontWeight.w500)),
                        10.horizontalSpace,
                        InkWell(
                          onTap: () {
                            context.goNamed(Routes.kRegisterScreen);
                          },
                          child: Text(AppStrings.signUp,
                              style: h16(
                                  context: context,
                                  color: AppColors.colorPrimary,
                                  // AppConstants.fontMedium,
                                  fontWeight: FontWeight.w500)),
                        )
                      ],
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

  /// Login button click method
  ///
  Future<void> _onLoginClick(BuildContext context) async {
    if (context.read<WelcomeCubit>().formKey.currentState!.validate()) {
      context.read<WelcomeCubit>().getLogin(
          emailController: context.read<WelcomeCubit>().emailController,
          passwordController: context.read<WelcomeCubit>().passwordController);
    }
  }

  void buildBlocListener(BuildContext context, WelcomeState state) {
    if (state is WelcomeLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is WelcomeError) {
      OverlayLoadingProgress.stop();

      Utils.showErrorMessage(context: context, message: state.error);
    } else if (state is APISuccessForWelcome) {
      OverlayLoadingProgress.stop();
    } else if (state is LoginSuccess) {
      OverlayLoadingProgress.stop();
      if (context.read<WelcomeCubit>().isAdmin) {
        context.goNamed(Routes.kAdminDashboardScreen);
      } else {
        context.goNamed(Routes.kDashboardScreen);
      }
    }
  }
}
