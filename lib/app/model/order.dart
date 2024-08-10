
import 'package:book_nest_life_care/app/model/cart_item.dart';

class Order {
  final String? id;
  final double? amount;
  final List<CartItem>? products;
  final DateTime? dateTime;

  Order({this.id, this.amount, this.products, this.dateTime});
}
