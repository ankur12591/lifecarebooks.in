import 'package:book_nest_life_care/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:book_nest_life_care/app/db/app_preferences.dart';
import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/component/register_form.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/cubit/register_cubit.dart';
import 'package:book_nest_life_care/utils/extensions.dart';


import '../../../../../config/app_assets.dart';
import '../../../../../config/app_colors.dart';
import '../../../../../config/app_values.dart';
import '../../../../../utils/custom_widgets/overlay_loading_progress.dart';
import '../../../../navigation/routes.dart';
import '../login/cubit/login_cubit.dart';

class RegisterScreen extends StatefulWidget with AppBarMixin {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    context.read<RegisterCubit>().countryCtl = TextEditingController();
    context.read<RegisterCubit>().selectedValue = "";
    context.read<RegisterCubit>().emailCtl = TextEditingController();
    context.read<RegisterCubit>().passwordCtl = TextEditingController();
    context.read<RegisterCubit>().confirmPasswordCtl = TextEditingController();
    context.read<RegisterCubit>().addressCtl = TextEditingController();
    context.read<RegisterCubit>().lastNameCtl = TextEditingController();
    context.read<RegisterCubit>().firstNameCtl = TextEditingController();
    super.initState();
    context.read<RegisterCubit>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
        listener: buildBlocListener,
        builder: (context, state) {
          return Scaffold(
            // appBar: widget.buildAppBar(context: context),
            body: GestureDetector(
              onTap: () {
                // Utils().dismissKeyboard(context);
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 10,
                    left: 16.0,
                    right: 16,
                    bottom: MediaQuery.of(context).padding.bottom + 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(

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
                      SizedBox(
                        height: AppValues.screenWidth / 12,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 0.0),
                        child: Text(
                          "Sign Up",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black),
                        ),
                      ),
                      20.verticalSpace,
                      // 30.verticalSpace,
                      RegisterForm(
                          firstNameCtl:
                          context.read<RegisterCubit>().firstNameCtl,
                          firstNameFn:
                          context.read<RegisterCubit>().firstNameFn,
                          lastNameCtl:
                          context.read<RegisterCubit>().lastNameCtl,
                          lastNameFn: context.read<RegisterCubit>().lastNameFn,
                          emailCtl: context.read<RegisterCubit>().emailCtl,
                          emailFn: context.read<RegisterCubit>().emailFn,

                          passwordCtl:
                          context.read<RegisterCubit>().passwordCtl,
                          passwordFn: context.read<RegisterCubit>().passwordFn,
                          confirmPasswordCtl:
                          context.read<RegisterCubit>().confirmPasswordCtl,
                          confirmPasswordFn:
                          context.read<RegisterCubit>().confirmPasswordFn,
                          onRegisterTap: () {
                            if (context
                                .read<RegisterCubit>()
                                .formKey
                                .currentState!
                                .validate() &&
                                context
                                    .read<RegisterCubit>()
                                    .validate(context)) {
                              context.read<RegisterCubit>().getSignUp();
                            }
                          },
                          onAlreadyHaveAccountTap: () {
                            context.goNamed(Routes.kWelcomeScreen);
                          },
                          formKey: context.read<RegisterCubit>().formKey),
                    ],
                  ),
                ),
               
                
                  ),
            ),
          );
        });
  }

  void buildBlocListener(BuildContext context, RegisterState state) {
    if (state is RegisterLoading) {
      OverlayLoadingProgress.start(context);
    } else if (state is CountryDetailsLoaded) {
      OverlayLoadingProgress.stop();
    } else if (state is NoCountryDetailsAvailable) {
      OverlayLoadingProgress.stop();
    } else if (state is CountryDetailsError) {
      OverlayLoadingProgress.stop();
      Utils.showErrorMessage(context: context, message: state.errorMessage);
    } else if (state is RegisterSuccess) {
      OverlayLoadingProgress.stop();
      Utils.snackBar(
        message:  "Signed Up successfully!",
        context: context,
      );
        context.goNamed(Routes.kWelcomeScreen);

    } else if (state is RegisterError) {
      OverlayLoadingProgress.stop();
      Utils.showErrorMessage(
        context: context,
        message: state.errorMessage,
      );
    }
  }
}
