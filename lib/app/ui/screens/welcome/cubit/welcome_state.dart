part of 'welcome_cubit.dart';

abstract class WelcomeState extends Equatable {
  const WelcomeState();
}

class WelcomeInitial extends WelcomeState {
  @override
  List<Object> get props => [];
}

class WelcomeInit extends WelcomeState {
  @override
  List<Object> get props => [];
}

class WelcomeLoading extends WelcomeState {
  @override
  List<Object> get props => [];
}

class APISuccessForWelcome extends WelcomeState {
  @override
  List<Object> get props => [];
}


class WelcomeError extends WelcomeState {
  final String error;

  const WelcomeError({required this.error});

  @override
  List<Object?> get props => [error];
}

class SuffixBoolChangedState extends WelcomeState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}

class LoginSuccess extends WelcomeState {
  final UserDetailsData data;

  const LoginSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

