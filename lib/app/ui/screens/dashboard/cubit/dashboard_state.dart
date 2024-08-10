part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();
}

class DashboardInitial extends DashboardState {
  @override
  List<Object> get props => [];
}

class DashboardInit extends DashboardState {
  @override
  List<Object> get props => [];
}

class DashboardLoading extends DashboardState {
  @override
  List<Object> get props => [];
}

class APISuccessForDashboard extends DashboardState {
  @override
  List<Object> get props => [];
}


class DashboardError extends DashboardState {
  final String error;

  const DashboardError({required this.error});

  @override
  List<Object?> get props => [error];
}

class DashboardTabLoaded extends DashboardState {
  final int tabIndex;

  const DashboardTabLoaded({this.tabIndex = 0});

  @override
  List<Object?> get props => [tabIndex];
}

class SuffixBoolChangedState extends DashboardState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}

