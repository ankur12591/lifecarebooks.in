import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/app/ui/custom_widget/common_button.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/app_assets.dart';
import '../../../../../config/app_strings.dart';
import '../../../../../utils/my_text_form_field.dart';
import '../../../../../utils/validators.dart';
import '../../../../navigation/routes.dart';
import 'cubit/forgot_password_cubit.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>
    with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<ForgotPasswordCubit>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(
              title: AppStrings.titleForgotPassword, context: context),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildBlocConsumer,
          ),
        );
      },
    );
  }

  /// Build bloc consumer widget.
  ///
  Widget get _buildBlocConsumer {
    ForgotPasswordCubit cubit = context.read<ForgotPasswordCubit>();
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              /// Email
              ///
              Text(
                AppStrings.textForgotHeading,
                style: h14().copyWith(color: AppColors.grey88),
              ),
              30.verticalSpace,
              MyTextFormField(
                  controller: cubit.emailController,
                  isShowFieldName: false,
                  obscureText: false,
                  isMandatory: true,
                  fieldHint: AppStrings.textEmail,
                  fillColor: AppColors.blueF6,
                  borderColor: AppColors.blueF6,
                  fieldHintColor: AppColors.blueA5,
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

              /// Send Button
              ///
              CommonButton(
                  title: AppStrings.textSend,
                  onTap: () {
                    _onForgotPasswordClick(context);
                  }),
              20.verticalSpace,
              Text(
                AppStrings.textResetInfo,
                style: h12().copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.black2E),
              ),
              4.verticalSpace,

              /// Navigate to Login view text
              ///
              UIComponent.customInkWellWidget(
                padding: 4,
                onTap: () {
                  context.goNamed(Routes.kLoginScreen);
                },
                child: Text(AppStrings.signIn,
                    style: h12().copyWith(
                        fontWeight: FontWeight.w700, color: AppColors.blueA5)),
              )
            ],
          ),
        );
      },
    );
  }

  /// Build bloc listener widget.
  ///
  void buildBlocListener(BuildContext context, ForgotPasswordState state) {
    if (state is ForgotPasswordLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is ForgotPasswordSuccess) {
      OverlayLoadingProgress.stop();
      Utils.showSnackBar(context: context, message: state.data.message ?? "");
      // context.goNamed(Routes.kHomeScreen);
    } else if (state is ForgotPasswordError) {
      OverlayLoadingProgress.stop();
      Utils.showErrorMessage(context: context, message: state.errorMessage);
    }
  }

  /// Forgot Password Click
  ///
  Future<void> _onForgotPasswordClick(BuildContext context) async {
    if (context.read<ForgotPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().forgotPassword(
          emailController: context.read<ForgotPasswordCubit>().emailController);
    }
  }
}
