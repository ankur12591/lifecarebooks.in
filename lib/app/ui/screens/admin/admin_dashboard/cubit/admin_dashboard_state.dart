part of 'admin_dashboard_cubit.dart';

abstract class AdminDashboardState extends Equatable {
  const AdminDashboardState();
}

class AdminDashboardInitial extends AdminDashboardState {
  @override
  List<Object> get props => [];
}

class AdminDashboardInit extends AdminDashboardState {
  @override
  List<Object> get props => [];
}

class AdminDashboardLoading extends AdminDashboardState {
  @override
  List<Object> get props => [];
}

class APISuccessForAdminDashboard extends AdminDashboardState {
  @override
  List<Object> get props => [];
}


class AdminDashboardError extends AdminDashboardState {
  final String error;

  const AdminDashboardError({required this.error});

  @override
  List<Object?> get props => [error];
}

class LogoutSuccess extends AdminDashboardState {
  @override
  List<Object> get props => [];
}

class SuffixBoolChangedState extends AdminDashboardState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}



