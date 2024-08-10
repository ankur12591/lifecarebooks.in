part of 'cart_cubit.dart';

abstract class CartState extends Equatable {
  const CartState();
}

class CartInitial extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoading extends CartState {
  @override
  List<Object> get props => [];
}

class CartUpdated extends CartState {
  final Map<int, CartItem> items;

  const CartUpdated(this.items);

  @override
  List<Object> get props => [items];
}

class CartCleared extends CartState {
  @override
  List<Object> get props => [];
}

class APISuccessForCart extends CartState {
  @override
  List<Object> get props => [];
}

class CartError extends CartState {
  final String error;

  const CartError({required this.error});

  @override
  List<Object> get props => [error];
}

class SuffixBoolChangedState extends CartState {
  final bool? showBool;

  const SuffixBoolChangedState({this.showBool});

  @override
  List<Object> get props => [showBool!];
}
