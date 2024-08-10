part of 'product_cubit.dart';

abstract class ProductState extends Equatable {}

class ProductInitial extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductDataLoading extends ProductState {
  @override

  List<Object?> get props => [];
}



class FilesRemovedState extends ProductState {
  int removeIndex;

  FilesRemovedState(this.removeIndex);

  @override
  List<Object?> get props => [this.removeIndex];
}

class FilesLoading extends ProductState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ProductErrorState extends ProductState {
  final String errorMessage;

  ProductErrorState(this.errorMessage);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class EnableSelection extends ProductState {

  EnableSelection();

  @override
  List<Object?> get props => [];
}

class DisableSelection extends ProductState {

  DisableSelection();

  @override
  List<Object?> get props => [];
}
