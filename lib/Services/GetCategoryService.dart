import 'package:dio/dio.dart';
import 'package:my_store/Helper/Api.dart';

import '../Models/Product.dart';

class GetCategory {
  Future<List<Product>> getCategory({required String categoryName}) async {
    Response response = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<dynamic> jsonData = response.data;
    List<Product> products = [];
    for (var data in jsonData) {
      products.add(Product.fromJson(data));
    }
    return products;
  }
}
