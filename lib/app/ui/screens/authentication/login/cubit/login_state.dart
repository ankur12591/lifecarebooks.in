part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class UserRoleInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginLoading extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginSuccess extends LoginState {
  // final LoginResponse data;

  const LoginSuccess(/*{required this.data}*/);

  @override
  List<Object> get props => [/*data*/];
}

class LoginUserRoleSuccess extends LoginState {
  final UserRoleResponseModel data;

  const LoginUserRoleSuccess({required this.data});

  @override
  List<Object> get props => [data];
}
class UserRoleDetailsLoaded extends LoginState {
  final List<UserRoleData>? userRoleDetails;

  UserRoleDetailsLoaded({
    this.userRoleDetails,
  });

  @override
  List<Object> get props => [userRoleDetails!];
}
class LoginToggleRememberMe extends LoginState {
  final bool checkBoxBool;

  const LoginToggleRememberMe({required this.checkBoxBool});

  @override
  List<Object> get props => [checkBoxBool];
}

class LoginError extends LoginState {
  final String errorMessage;

  LoginError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
