import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:book_nest_life_care/app/model/cart_item.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  Map<int, CartItem> _items = {};

  Map<int, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price! * cartItem.quantity!;
    });
    return total;
  }

  void addItem({
    int? productId,
    double? price,
    String? title,
    int? quantity,
    String? image,
  }) {
    emit(CartInitial());

    if (_items.containsKey(productId)) {
      _items.update(
        productId!,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          image: existingCartItem.image,
          quantity: existingCartItem.quantity! + 1,
          price: existingCartItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId!,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          image: image,
          quantity: 1,
        ),
      );
    }
    emit(CartUpdated(_items));
  }

  void removeItem(int productId) {
    _items.remove(productId);
    emit(CartUpdated(_items));
  }

  void updateItemQuantity(int productId, int newQuantity) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          image: existingCartItem.image,
          quantity: newQuantity,
          price: existingCartItem.price,
        ),
      );
      emit(CartUpdated(_items));
    }
  }

  void clear() {
    _items = {};
    emit(CartCleared());
  }

  Future<void> getData(BuildContext context) async {
    emit(CartLoading());
    try {
      // Simulate data fetching
      await Future.delayed(Duration(seconds: 2));
      // Simulate a successful fetch
      emit(APISuccessForCart());
    } catch (e) {
      emit(CartError(error: e.toString()));
    }
  }
}
