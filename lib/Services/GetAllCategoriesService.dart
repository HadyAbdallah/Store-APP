import 'package:dio/dio.dart';

import '../Helper/Api.dart';

class AllCategoriesSarvice {
  Future<List<dynamic>> getAllCategories() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    List<dynamic> categories = response.data;

    return categories;
  }
}
