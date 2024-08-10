import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:book_nest_life_care/app/ui/custom_widget/common_button.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/cubit/register_cubit.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/model/country_details_response.dart';
import 'package:book_nest_life_care/config/network/network_constants.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/input_formatters.dart';
import 'package:book_nest_life_care/utils/string_utils.dart';

import '../../../../../../config/app_assets.dart';
import '../../../../../../config/app_colors.dart';
import '../../../../../../config/text_styles.dart';
import '../../../../../../utils/debouncer.dart';
import '../../../../../../utils/my_text_form_field.dart';
import '../../../../../../utils/ui_components.dart';
import '../../../../../../utils/validators.dart';
import '../../../../../navigation/routes.dart';

class RegisterForm extends StatefulWidget {
  final GlobalKey formKey;

  final TextEditingController firstNameCtl;
  final FocusNode firstNameFn;
  final TextEditingController lastNameCtl;
  final FocusNode lastNameFn;
  final TextEditingController emailCtl;
  final FocusNode emailFn;
  final TextEditingController passwordCtl;
  final FocusNode passwordFn;
  final TextEditingController confirmPasswordCtl;
  final FocusNode confirmPasswordFn;
  final VoidCallback? onRegisterTap;
  final VoidCallback? onAlreadyHaveAccountTap;

  const RegisterForm({
    super.key,
    required this.firstNameCtl,
    required this.firstNameFn,
    required this.lastNameCtl,
    required this.lastNameFn,
    required this.emailCtl,
    required this.emailFn,
    required this.passwordCtl,
    required this.passwordFn,
    required this.confirmPasswordCtl,
    required this.confirmPasswordFn,
    required this.formKey,
    this.onRegisterTap,
    this.onAlreadyHaveAccountTap,
  });

  @override
  State<RegisterForm> createState() => _CompleteYourProfileFormState();
}

class _CompleteYourProfileFormState extends State<RegisterForm> {
  final _debouncer = Debouncer(milliseconds: 1000);

  // var selectedCountry = CountryTypeData();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: MyTextFormField(
                  fieldName: AppStrings.textFirstName,
                  controller: widget.firstNameCtl,
                  focusNode: widget.firstNameFn,
                  isMandatory: true,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(widget.lastNameFn);
                  },
                  readOnly: false,
                  inputFormatters: [
                    InputFormatters().textInputFormatter,
                    LengthLimitingTextInputFormatter(10),
                  ],
                  obscureText: false,
                  validator: (value) {
                    return validateFirstName(context, value,"");
                  },
                ),
              ),
              12.horizontalSpace,
              Expanded(
                child: MyTextFormField(
                  fieldName: AppStrings.textLastName,
                  controller: widget.lastNameCtl,
                  focusNode: widget.lastNameFn,
                  isMandatory: true,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(widget.emailFn);
                  },
                  inputFormatters: [
                    InputFormatters().textInputFormatter,
                    LengthLimitingTextInputFormatter(10),
                  ],
                  readOnly: false,
                  obscureText: false,
                  validator: (value) {
                    return validateLastName(context, value,"");
                  },
                ),
              ),
            ],
          ),
          12.verticalSpace,
          MyTextFormField(
            fieldName: AppStrings.textEmail,
            controller: widget.emailCtl,
            focusNode: widget.emailFn,
            isMandatory: true,
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (v) {
              FocusScope.of(context).requestFocus(widget.passwordFn);
            },
            textInputAction: TextInputAction.next,
            readOnly: false,
            obscureText: false,
            validator: (value) {
              return validateEmail(context, value,"","");
            },
          ),
          12.verticalSpace,

          MyTextFormField(
            fieldName: AppStrings.textPassword,
            controller: widget.passwordCtl,
            focusNode: widget.passwordFn,
            obscureText: true,
            isMandatory: true,
            inputFormatters: [InputFormatters().emojiRestrictInputFormatter],
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (v) {
              FocusScope.of(context).requestFocus(widget.confirmPasswordFn);
            },
            readOnly: false,
            validator: (value) {
              return validatePassword(context, value,"","");
            },
          ),
          12.verticalSpace,
          MyTextFormField(
            fieldName: AppStrings.textConfirmPassword,
            controller: widget.confirmPasswordCtl,
            focusNode: widget.confirmPasswordFn,
            obscureText: true,
            isMandatory: true,
            inputFormatters: [InputFormatters().emojiRestrictInputFormatter],
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (v) {
              FocusScope.of(context).unfocus();
            },
            readOnly: false,
            validator: (value) {
              return validateConfirmPassword(
                  context, value, widget.passwordCtl.text,"");
            },
          ),
          24.verticalSpace,
          CommonButton(
            isSuffixArrowNeeded: true,
            suffixIcon: SVGAssets.arrowRightIcon,
            onTap: widget.onRegisterTap ?? () {},
            title: AppStrings.signUp,
          ),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UIComponent.customInkWellWidget(
                onTap: widget.onAlreadyHaveAccountTap,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.alreadyHaveAnAccount,
                    style: h14(),
                  ),
                ),
              ),
              10.horizontalSpace,
              InkWell(
                onTap: () {
                  context.goNamed(Routes.kWelcomeScreen);
                },
                child: Text(AppStrings.login,
                    style: h16(
                        context: context,
                        color: AppColors.colorPrimary,
                        // AppConstants.fontMedium,
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),

        ],
      ),
    );
  }

}
