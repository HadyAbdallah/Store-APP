import 'package:dio/dio.dart';
import 'package:my_store/Models/Product.dart';

import '../Helper/Api.dart';

class AllProductsService {
  Future<List<Product>> getAllProducts() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<dynamic> jsonData = response.data;
    List<Product> products = [];
    for (var data in jsonData) {
      products.add(Product.fromJson(data));
    }
    return products;
  }
}
