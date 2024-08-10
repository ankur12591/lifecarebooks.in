class Product {
  final int? id;
  final String? title;
  final String? imageUrl;
  final String? description;
  final double? price;
  bool? isFavourite;

  Product(
      {this.id,
      this.title,
      this.imageUrl,
      this.description,
      this.price,
      this.isFavourite = false});
}
