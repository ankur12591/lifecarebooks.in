import 'package:book_nest_life_care/app/ui/custom_widget/common_button.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/user_role_response_model.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/input_formatters.dart';
import 'package:book_nest_life_care/utils/my_text_form_field.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:book_nest_life_care/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../config/text_styles.dart';
import '../../../../../navigation/routes.dart';
import '../../../../custom_widget/custom_radio_option_bottom_sheet.dart';
import '../cubit/login_cubit.dart';

class LoginForm extends StatefulWidget {
  final formKey = GlobalKey<FormState>();

  final TextEditingController roleController;
  final FocusNode roleFn;
  final TextEditingController emailController;
  final FocusNode emailFn;
  final TextEditingController passwordController;
  final FocusNode passwordFn;
  final String? emailEmptyMessage;
  final String? emailValidMessage;
  final String? passwordEmptyMessage;
  final String? passwordValidMessage;

  LoginForm({
    super.key,
    required this.emailController,
    required this.emailFn,
    required this.passwordController,
    required this.passwordFn,
    required this.roleController,
    required this.roleFn,
    this.emailEmptyMessage,
    this.emailValidMessage,
    this.passwordEmptyMessage,
    this.passwordValidMessage,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: h28(),
              children: <TextSpan>[
                const TextSpan(text: AppStrings.welcomeHeading),
                TextSpan(
                  text: AppStrings.welcomeAppName,
                  style: h28().copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          10.verticalSpace,
          Text(
            AppStrings.welcomeDescription,
            style: h14(color: AppColors.grey88),
          ),
          30.verticalSpace,

          /// Email
          ///
          MyTextFormField(
              controller: widget.emailController,
              focusNode: widget.emailFn,
              isShowFieldName: false,
              obscureText: false,
              isMandatory: true,
              fieldHint: AppStrings.textEmail,
              fillColor: AppColors.blueF6,
              borderColor: AppColors.blueF6,
              fieldHintColor: AppColors.blueA5,
              textInputAction: TextInputAction.next,
              inputFormatters: [InputFormatters().emojiRestrictInputFormatter],
              onFieldSubmitted: (v) {
                FocusScope.of(context).requestFocus(widget.passwordFn);
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
              controller: widget.passwordController,
              focusNode: widget.passwordFn,
              isShowFieldName: false,
              obscureText: true,
              isMandatory: true,
              fieldHint: AppStrings.textPassword,
              fillColor: AppColors.blueF6,
              borderColor: AppColors.blueF6,
              fieldHintColor: AppColors.blueA5,
              textInputAction: TextInputAction.done,
              inputFormatters: [
                InputFormatters().emojiRestrictInputFormatter,
              ],
              isVisibilityForLogin: true,
              onFieldSubmitted: (v) {
                FocusScope.of(context).unfocus();
              },
              keyboardType: TextInputType.visiblePassword,
              prefixIcon: SVGAssets.passwordPrefixIcon.toSvg,
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
                  context.pushNamed(Routes.kForgotPasswordScreen);
                },
                child: Text(
                  AppStrings.textForgotPassword,
                  style:
                      h12(fontWeight: FontWeight.w700, color: AppColors.blueA5),
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
    );
  }

  /// Login button click method
  ///
  Future<void> _onLoginClick(BuildContext context) async {
    if (widget.formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }

}
