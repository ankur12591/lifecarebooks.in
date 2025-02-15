part of 'splash_cubit.dart';

abstract class SplashState extends Equatable {
  const SplashState();
}

class SplashInitial extends SplashState {
  @override
  List<Object> get props => ["SplashInitial"];
}

class InitialiseComplete extends SplashState {
  @override
  List<Object> get props => ["InitialiseComplete"];
}
