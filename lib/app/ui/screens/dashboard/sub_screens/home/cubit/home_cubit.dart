import 'package:bloc/bloc.dart';
import 'package:book_nest_life_care/app/model/base_model.dart';
import 'package:book_nest_life_care/app/model/product.dart';
import 'package:book_nest_life_care/app/repository/role_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  RoleRepository repository;

  HomeCubit({required this.repository}) : super(HomeInitial());

  // List<Product> categoryProducts = [];
  // List<Product> topCategoryProducts = [];

  List<CategoryProduct> categoryProducts = [
    CategoryProduct(
      id: 1,
      title: 'All Schools',
      imageUrl:
      // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      'assets/images/school.png',
    ),
    CategoryProduct(
      id: 1,
      title: 'NCERT Books',
      imageUrl:
      // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      'assets/images/ncert_book.png',
    ),
    CategoryProduct(
      id: 1,
      title: 'Calculator',
      imageUrl:
      // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      'assets/images/calculator.png',
    ),
    CategoryProduct(
        id: 2,
        title: 'Stationary',

        // imageUrl: 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Legend-BlackMatte-3.4_672x672.jpg?v=1600886623'),
        imageUrl:
        'assets/images/office_supplies.png'),
    CategoryProduct(
        id: 3,
        title: 'Notebook',
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-3.jpg?v=1618424894'),
        'assets/images/notebook.png'),
    CategoryProduct(
        id: 4,
        title: 'Calender',
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-PremierLowTop-Black-3.4.jpg?v=1600270679'),
        'assets/images/calendar.png'),
  ];

  List<CategoryProduct> topCategoryProducts = [
    CategoryProduct(
      id: 1,
      title: 'Notebooks',
      imageUrl:
      // 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      'https://5.imimg.com/data5/SELLER/Default/2022/8/QW/ZS/OK/158032092/rough-fair-notebooks-1000x1000.jpg',
    ),
    CategoryProduct(
        id: 2,
        title: 'School Books',

        // imageUrl: 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Legend-BlackMatte-3.4_672x672.jpg?v=1600886623'),
        imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/81yYeKc+U7L.jpg'),
    CategoryProduct(
        id: 3,
        title: 'Office Supplies',
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-3.jpg?v=1618424894'),
        'https://thumbs.dreamstime.com/z/stationery-set-22104838.jpg'),
    CategoryProduct(
        id: 4,
        title: 'Calender',
        imageUrl:
        // 'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-PremierLowTop-Black-3.4.jpg?v=1600270679'),
        'https://thumbs.dreamstime.com/z/calender-4737855.jpg'),
  ];


  Future<void> getData(BuildContext context) async {
    // getCategoryProducts();
    // getTopCategoryProducts();
  }

  // Future<void> getCategoryProducts() async {
  //   emit(HomeLoading());
  //
  //   final apiResponse = await repository.getCategoryProducts();
  //
  //   if (apiResponse is FailedResponse) {
  //     emit(HomeError(error: apiResponse.errorMessage));
  //   } else if (apiResponse is SuccessResponse) {
  //     categoryProducts = apiResponse.data;
  //     emit(HomeSuccess());
  //   }
  // }
  //
  // Future<void> getTopCategoryProducts() async {
  //   emit(HomeLoading());
  //
  //   final apiResponse = await repository.getTopCategoryProducts();
  //
  //   if (apiResponse is FailedResponse) {
  //     emit(HomeError(error: apiResponse.errorMessage));
  //   } else if (apiResponse is SuccessResponse) {
  //     topCategoryProducts = apiResponse.data;
  //     emit(HomeSuccess());
  //   }
  // }
}

class CategoryProduct {
  final int? id;
  final String? title;
  final String? imageUrl;

  CategoryProduct({
    this.id,
    this.title,
    this.imageUrl,
  });
}
