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
import 'cubit/profile_cubit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<ProfileCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    ProfileCubit cubit = context.read<ProfileCubit>();
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
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
                                const SizedBox(
                                  height: 80,
                                  width: 80,
                                  //  color: Colors.green,
                                  child: Image(
                                      // height: 80,
                                      // width: 80,
                                      color: AppColors.colorPrimary,
                                      image: AssetImage(AppAssets.bookLogo)),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(top: 0.0, bottom: 10),
                                  child: Center(
                                    child: Text(
                                      "BookNest Lifecare",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: AppColors.black,
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
                                  color: AppColors.black),
                            ),
                          ),
                          16.verticalSpace,
                          // SizedBox(
                          //   height: AppValues.screenWidth / 18,
                          // // ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(vertical: 20.0),
                          //   child: Container(
                          //       width: AppValues.screenWidth,
                          //       height: AppValues.screenHeight / 14,
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(48.0),
                          //         color: AppColors.grayfb,
                          //         border: Border.all(
                          //           color: AppColors.grayfb,
                          //           width: .5,
                          //         ),
                          //       ),
                          //       child: Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           InkWell(
                          //               onTap: () {
                          //                 cubit.isEmail = true;
                          //               },
                          //               child: Padding(
                          //                 padding: const EdgeInsets.all(8.0),
                          //                 child: Container(
                          //                   width: AppValues.screenWidth / 2.52,
                          //                   decoration: BoxDecoration(
                          //                     borderRadius:
                          //                         BorderRadius.circular(48.0),
                          //                     color: cubit.isEmail
                          //                         ? AppColors.white
                          //                         : AppColors.grayfb,
                          //                     border: Border.all(
                          //                       color: AppColors.grayfb,
                          //                       width: .5,
                          //                     ),
                          //                   ),
                          //                   child: Padding(
                          //                     padding:
                          //                         const EdgeInsets.all(0.0),
                          //                     child: Center(
                          //                       child: Text(
                          //                         "Email",
                          //                         style: h16(
                          //                             context: context,
                          //                             color: AppColors.gray7A,
                          //                             fontWeight:
                          //                                 FontWeight.bold),
                          //                       ),
                          //                     ),
                          //                   ),
                          //                 ),
                          //               )),
                          //           InkWell(
                          //               onTap: () {
                          //                 cubit.isEmail = false;
                          //                 // setState(() {
                          //                 //   isEmail = !isEmail;
                          //                 // });
                          //               },
                          //               child: Padding(
                          //                 padding: const EdgeInsets.all(8.0),
                          //                 child: Container(
                          //                   width: AppValues.screenWidth / 2.52,
                          //                   decoration: BoxDecoration(
                          //                     borderRadius:
                          //                         BorderRadius.circular(48.0),
                          //                     color: !cubit.isEmail
                          //                         ? AppColors.white
                          //                         : AppColors.grayfb,
                          //                     border: Border.all(
                          //                       color: AppColors.grayfb,
                          //                       width: .5,
                          //                     ),
                          //                   ),
                          //                   child: Padding(
                          //                     padding:
                          //                         const EdgeInsets.all(0.0),
                          //                     child: Center(
                          //                       child: Text(
                          //                         "Phone number",
                          //                         style: h16(
                          //                             color: AppColors.gray7A,
                          //                             fontWeight:
                          //                                 FontWeight.bold),
                          //                       ),
                          //                     ),
                          //                   ),
                          //                 ),
                          //               )),
                          //         ],
                          //       )),
                          // ),
                          // SizedBox(
                          //   height: AppValues.screenWidth / 18,
                          // ),
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
                                  fillColor: AppColors.blueF6,
                                  borderColor: AppColors.blueF6,
                                  fieldHintColor: AppColors.blueA5,
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
                                  fillColor: AppColors.blueF6,
                                  borderColor: AppColors.blueF6,
                                  fieldHintColor: AppColors.blueA5,
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
                                          color: AppColors.blueA5),
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
                                    // _onLoginClick(context);
                                  })
                              // Padding(
                              //   padding: const EdgeInsets.only(
                              //       bottom: 12.0),
                              //   child: Text(
                              //     "Email",
                              //     textAlign: TextAlign.start,
                              //     style: TextStyle(
                              //         fontSize: 16,
                              //         fontWeight: FontWeight.bold,
                              //         color: AppColors.black),
                              //   ),
                              // ),
                              // TextFormFieldWidgetRedBox(
                              //   inputFormatters: [
                              //     LengthLimitingTextInputFormatter(
                              //         10),
                              //   ],
                              //   autovalidateMode: AutovalidateMode
                              //       .onUserInteraction,
                              //   enabled: true,
                              //   // controller:
                              //   // _onLoginController.textEmailController,
                              //   hintText: AppConstants.email,
                              //   inputType: TextInputType.emailAddress,
                              //   isObscureText: false,
                              //   labelText: AppConstants.email,
                              //   onChanged: (v) {
                              //     // if (v.isNotEmpty) {
                              //     //   _onLoginController.isEmailEmpty.value =
                              //     //   false;
                              //     // }
                              //   },
                              //   // isError: _onLoginController.isEmailEmpty.value,
                              //   // isBox: _onLoginController.isEmailEmpty.value,
                              // ),
                              // SizedBox(
                              //   height: AppValues.screenWidth / 24,
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.only(
                              //       bottom: 12.0),
                              //   child: Text(
                              //     AppConstants.password,
                              //     textAlign: TextAlign.start,
                              //     style: TextStyle(
                              //         fontSize: 16,
                              //         fontWeight: FontWeight.bold,
                              //         color: AppColors.black),
                              //   ),
                              // ),
                              // TextFormFieldWidgetRedBox(
                              //   inputFormatters: [
                              //     LengthLimitingTextInputFormatter(
                              //         10),
                              //   ],
                              //   autovalidateMode: AutovalidateMode
                              //       .onUserInteraction,
                              //   enabled: true,
                              //   // isObscureText:
                              //   // _onLoginController.isPasswordVisible.value,
                              //   // controller:
                              //   // _onLoginController.textPasswordController,
                              //   hintText: AppConstants.password,
                              //   inputType: TextInputType.emailAddress,
                              //   labelText: AppConstants.password,
                              //   passwordButton: IconButton(
                              //     // icon: _onLoginController
                              //     //     .isPasswordVisible.value ==
                              //     //     false
                              //     //     ? SvgPicture.asset(
                              //     //   ImagePath.pw_visible,
                              //     // )
                              //     //     : SvgPicture.asset(
                              //     //   ImagePath.pw_invisible,
                              //     // ),
                              //     icon: SvgPicture.asset(
                              //       ImagePath.pw_invisible,
                              //     ),
                              //     onPressed: () {
                              //       // _onLoginController.isPasswordVisible.value =
                              //       // !_onLoginController
                              //       //     .isPasswordVisible.value;
                              //     },
                              //   ),
                              //   onChanged: (v) {
                              //     // if (v.isNotEmpty) {
                              //     //   print('value ' + v.toString());
                              //     //   _onLoginController.isPasswordEmpty.value =
                              //     //   false;
                              //     // }
                              //   },
                              //   // isError:
                              //   // _onLoginController.isPasswordEmpty.value,
                              //   // isBox: _onLoginController.isPasswordEmpty.value,
                              // ),
                              // SizedBox(
                              //   height: AppValues.screenWidth / 24,
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //   MainAxisAlignment.end,
                              //   children: [
                              //     InkWell(
                              //       onTap: () {
                              //         // Get.toNamed(Routes.forgotPassword);
                              //       },
                              //       child: UiUtils().widgetText(
                              //           AppConstants.forgotPassword,
                              //           16,
                              //           AppColors.colorPrimary,
                              //           // AppConstants.fontMedium,
                              //           FontWeight.w500),
                              //     )
                              //   ],
                              // ),
                              // SizedBox(
                              //   height: AppValues.screenWidth / 15,
                              // ),
                              // Padding(
                              //   padding: EdgeInsets.only(
                              //       right: 20, left: 20),
                              //   child: RoundedButton(
                              //       onTap: () {
                              //         cubit.loginApi();
                              //         // Get.toNamed(
                              //         //   Routes.DASHBOARD,
                              //         // );
                              //         // //  Get.back();
                              //       },
                              //       textcolor: AppColors.white,
                              //       color: AppColors.colorPrimary,
                              //       buttonName: 'Login'),
                              // ),
                            ],
                          ),

                          SizedBox(
                            height: AppValues.screenHeight / 40,
                          ),
                          //
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       color: AppColors.colorPrimary,
                          //       height: 0.5,
                          //       width: AppValues.screenWidth / 5,
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.only(
                          //           left: 8.0, right: 8),
                          //       child: Text(
                          //         AppConstants.orContinueWith,
                          //         style: TextStyle(
                          //             fontSize: 16,
                          //             fontWeight: FontWeight.bold,
                          //             color: AppColors.black),
                          //       ),
                          //     ),
                          //     Container(
                          //       color: AppColors.colorPrimary,
                          //       height: 0.5,
                          //       width: AppValues.screenWidth / 5,
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: AppValues.screenHeight / 40,
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.only(right: 20, left: 20),
                          //   child: UiUtils().widgetButtonWithIcon(
                          //       AppConstants.continueWithGoogle,
                          //       AppColors.black,
                          //       ImagePath.googleIcon,
                          //       AppColors.grayfb,
                          //       AppColors.grayE5, () {
                          //     // _onLoginController.loginWithGoogle();
                          //   }),
                          // ),
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
                          //  Get.toNamed(Routes.register);
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
        );
      },
    );
  }

  void buildBlocListener(BuildContext context, ProfileState state) {
    if (state is ProfileLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is ProfileError) {
      OverlayLoadingProgress.stop();

      Utils.showErrorMessage(context: context, message: state.error);
    } else if (state is APISuccessForProfile) {
      OverlayLoadingProgress.stop();
    }
  }
}
