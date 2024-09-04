import 'package:dio/dio.dart';
import 'package:my_store/Helper/Api.dart';

import '../Models/Product.dart';

class GetCategory {
  Future<List<Product>> getCategory({required String categoryName}) async {
    Response response = await Api(Dio())
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    if (response.statusCode == 200) {
      List<dynamic> jsonData = response.data;
      List<Product> products = [];
      for (var data in jsonData) {
        products.add(Product.fromJson(data));
      }
      return products;
    } else {
      throw Exception(
          "There is a problem in status Code ${response.statusCode}");
    }
  }
}
