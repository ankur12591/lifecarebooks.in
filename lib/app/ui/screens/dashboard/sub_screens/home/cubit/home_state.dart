part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeInit extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeSuccess extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {
  @override
  List<Object> get props => [];
}

class APISuccessForHome extends HomeState {
  @override
  List<Object> get props => [];
}


class HomeError extends HomeState {
  final String error;

  const HomeError({required this.error});

  @override
  List<Object?> get props => [error];
}

class SuffixBoolChangedState extends HomeState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}

