part of 'profile_cubit.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class ProfileInitial extends ProfileState {
  @override
  List<Object> get props => [];
}

class ProfileInit extends ProfileState {
  @override
  List<Object> get props => [];
}

class ProfileLoading extends ProfileState {
  @override
  List<Object> get props => [];
}

class APISuccessForProfile extends ProfileState {
  @override
  List<Object> get props => [];
}


class ProfileError extends ProfileState {
  final String error;

  const ProfileError({required this.error});

  @override
  List<Object?> get props => [error];
}

class SuffixBoolChangedState extends ProfileState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}

