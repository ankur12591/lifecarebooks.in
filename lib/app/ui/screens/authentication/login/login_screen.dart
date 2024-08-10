import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/utils.dart';
import '../../../../navigation/routes.dart';
import 'component/login_form.dart';
import 'cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().getData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: AppStrings.signIn, context: context),
      body: SingleChildScrollView(
        physics:
            const ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: _buildBlocConsumer,
            )
            // Expanded(child: Container()),
            // Expanded(
            //   flex: 2,
            //     child: _buildBlocConsumer),
          ],
        ),
      ),
    );
  }

  /// Build bloc consumer widget.
  ///
  Widget get _buildBlocConsumer {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return
          LoginForm(
          emailController: context.read<LoginCubit>().emailController,
          emailFn: context.read<LoginCubit>().emailFn,
          passwordController: context.read<LoginCubit>().passwordController,
          passwordFn: context.read<LoginCubit>().passwordFn,
          roleController: context.read<LoginCubit>().roleController,
          roleFn: context.read<LoginCubit>().roleFn,
          emailEmptyMessage: "eMAILREQUIRED",
          emailValidMessage: "eMAILVALID",
          passwordEmptyMessage: "pASSWORDREQUIRED",
        );
      },
    );
  }

  /// Build bloc listener widget.
  ///
  void buildBlocListener(BuildContext context, LoginState state) {
    if (state is LoginLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is LoginSuccess) {
      OverlayLoadingProgress.stop();
      context.goNamed(Routes.kHomeScreen);
      context.read<LoginCubit>().emailController.clear();
      context.read<LoginCubit>().passwordController.clear();
      context.read<LoginCubit>().roleController.clear();
      context.read<LoginCubit>().selectedRoleValue = "";
    } else if (state is LoginUserRoleSuccess) {
      OverlayLoadingProgress.stop();

      context.read<LoginCubit>().updateUerRoleList(state.data.data ?? []);
    } else if (state is LoginError) {
      OverlayLoadingProgress.stop();
      Utils.showErrorMessage(context: context, message: state.errorMessage);
    }
  }
}
