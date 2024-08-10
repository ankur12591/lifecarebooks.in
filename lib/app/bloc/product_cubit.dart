import 'dart:io';

import 'package:book_nest_life_care/app/model/product.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  List<Product> _items = [
    Product(
      id: 1,
      title: 'English',
      description: 'An English book',
      price: 250.00,
      imageUrl:
      // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/812WA46R-BL.jpg',
    ),
    Product(
        id: 2,
        title: 'Mental Maths',
        description: 'Built to last with matte leather uppers, StormKing™ lug rubber outsoles and a flexible elastic goring, the Legend blends form and function like nothing you\'ve seen anywhere else.',
        price: 120.00,
        // imageUrl: 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Legend-BlackMatte-3.4_672x672.jpg?v=1600886623'),
        imageUrl: 'https://images-na.ssl-images-amazon.com/images/I/81yYeKc+U7L.jpg'),

    Product(
        id: 3,
        title: 'Science',
        description: "Let's learn science",
        price: 169.00,
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-3.jpg?v=1618424894'),
        'https://images-na.ssl-images-amazon.com/images/I/41iUljDeC3L._SX339_BO1,204,203,200_.jpg'),
    Product(
        id: 4,
        title: 'Social Science',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 249.99,
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-PremierLowTop-Black-3.4.jpg?v=1600270679'),
        'https://images-na.ssl-images-amazon.com/images/I/5194dHN+BOL._SX339_BO1,204,203,200_.jpg'),
    Product(
        id: 5,
        title: 'Words & Sentences',
        description: 'This hardwearing Chelsea is every bit as comfortable as you\'d expect from a slip-on boot but with the durability of our Rugged & Resilient collection.',
        price: 329.99,
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Captain-Natural-3.jpg?v=1584114360'),
        'https://images-eu.ssl-images-amazon.com/images/I/51HdPEOIr2L._SX198_BO1,204,203,200_QL40_FMwebp_.jpg'),
    Product(
        id: 6,
        title: 'Logical Reasoning',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 209.99,
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-PremierLowTop-Black-3.4.jpg?v=1600270679'),
        'https://images-na.ssl-images-amazon.com/images/I/51zcAI9kwfL._SX380_BO1,204,203,200_.jpg'),
    Product(
        id: 7,
        title: 'Mathematics',
        description: 'Handcrafted for the men who wear their boots hard, every detail was carefully selected so you can go the extra mile with confidence.',
        price: 159.99,
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-2.jpg?v=1618424894'),
        'https://images-na.ssl-images-amazon.com/images/I/511nxxLUMxL._SX380_BO1,204,203,200_.jpg'),
    Product(
        id: 8,
        title: 'NCERT Workbook',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 179.99,
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-3.jpg?v=1618424894'),
        'https://images-na.ssl-images-amazon.com/images/I/51Zkxd74gML._SX341_BO1,204,203,200_.jpg'),
    // Product(
    //     id: 9,
    //     title: 'The Chelsea',
    //     description: 'Functional and Fashionable.',
    //     price: 49.99,
    //     imageUrl: 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Legend-BlackMatte-3.4_672x672.jpg?v=1600886623'),
    // Product(
    //     id: 10,
    //     title: 'Men\'s Sneakers',
    //     description: 'Clean & Comfortable Sneakers made with classic Leathers.',
    //     price: 49.99,
    //     imageUrl:
    //     'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-PremierLowTop-Black-3.4.jpg?v=1600270679'),
  ];

  List<Product> get items{
    return [..._items];
  }

  List<Product> get favouriteItems{
    return _items.where((productItem) => productItem.isFavourite!).toList();

  }

  Product findProductById(int id){
    return _items.firstWhere((element) => element.id == id);
  }
  void addProduct(){

    // update();
  }

  void toggleFavouriteStatus(int id){
    items[id].isFavourite = !items[id].isFavourite!;
    // update();
  }

}
