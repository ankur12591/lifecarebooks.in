part of 'category_cubit.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryInitial extends CategoryState {
  @override
  List<Object> get props => [];
}



class CategoryLoading extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategoryGradeLevelSuccess extends CategoryState {
  @override
  List<Object> get props => [];
}




class CategoryError extends CategoryState {
  final String error;

  const CategoryError({required this.error});

  @override
  List<Object?> get props => [error];
}


class GradeLevelListState extends CategoryState {
  final List<GradeLevel>  gradeLevelData;

  const GradeLevelListState({required this.gradeLevelData});

  @override
  List<Object?> get props => [gradeLevelData];
}

