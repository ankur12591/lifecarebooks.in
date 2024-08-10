part of 'custom_bottom_nav_bar_cubit.dart';


abstract class CustomBottomNavBarState extends Equatable {}

final class CustomBottomNavBarInitial extends CustomBottomNavBarState {
  @override
  List<Object?> get props => [];
}

class CustomBottomNavBarTabLoaded extends CustomBottomNavBarState {
  final int? tabIndex;

  CustomBottomNavBarTabLoaded({this.tabIndex});

  @override
  List<Object?> get props => [tabIndex];
}



class CustomBottomNavBarLoading extends CustomBottomNavBarState {
  @override
  List<Object> get props => [];
}

class CustomBottomNavBarError extends CustomBottomNavBarState {
  final String errorMessage;

  CustomBottomNavBarError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}


