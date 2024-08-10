import 'package:book_nest_life_care/app/model/base_model.dart';
// import 'package:book_nest_life_care/app/repository/authentication_repository.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/forgot_password/model/forgot_password_request.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/forgot_password/model/forgot_password_response.model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import '../../../../../db/app_preferences.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  // AuthenticationRepository repository;

  ForgotPasswordCubit(
  //     {
  //   required this.repository,
  // }
  ) : super(ForgotPasswordInitial());
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  Future<void> getData() async {
    emailController.text = "";
  }

  /// ForgotPassword API
  ///
  /// required [email] as user entered email.
  Future<void> forgotPassword({
    required TextEditingController emailController,
  }) async {
    emit(ForgotPasswordLoading());

    final model = ForgotPasswordRequest(
      email: emailController.text,
    );

    // final apiResponse = await repository.forgotPassword(requestModel: model);
    //
    // if (apiResponse is FailedResponse) {
    //   emit(ForgotPasswordError(apiResponse.errorMessage));
    // } else if (apiResponse is SuccessResponse) {
    //   emit(ForgotPasswordSuccess(data: apiResponse.data));
    // }
  }
}
