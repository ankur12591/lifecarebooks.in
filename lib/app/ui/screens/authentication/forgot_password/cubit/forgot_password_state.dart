part of 'forgot_password_cubit.dart';

abstract class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();
}

class ForgotPasswordInitial extends ForgotPasswordState {
  @override
  List<Object?> get props => [];
}
class ForgotPasswordError extends ForgotPasswordState {
  final String errorMessage;

  ForgotPasswordError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class ForgotPasswordLoading extends ForgotPasswordState {
  @override
  List<Object> get props => [];
}

class ForgotPasswordSuccess extends ForgotPasswordState {
   final ForgotPasswordResponse data;

  const ForgotPasswordSuccess(
      {required this.data}
      );

  @override
  List<Object> get props => [data];
}
