part of 'class_books_cubit.dart';

abstract class ClassBooksState extends Equatable {
  const ClassBooksState();
}

class ClassBooksInitial extends ClassBooksState {
  @override
  List<Object> get props => [];
}

class ClassBooksInit extends ClassBooksState {
  @override
  List<Object> get props => [];
}

class ClassBooksLoading extends ClassBooksState {
  @override
  List<Object> get props => [];
}

class APISuccessForClassBooks extends ClassBooksState {
  @override
  List<Object> get props => [];
}


class ClassBooksError extends ClassBooksState {
  final String error;

  const ClassBooksError({required this.error});

  @override
  List<Object?> get props => [error];
}

class SuffixBoolChangedState extends ClassBooksState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}

