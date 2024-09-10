import 'package:dio/dio.dart';
import 'package:my_store/Helper/Api.dart';
import 'package:my_store/Models/Product.dart';

class UpdateProductService {
  Future<Product> updateProduct(
      {required int id,
      required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Response response =
        await Api().put(url: "https://fakestoreapi.com/products/$id", body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });
    return Product.fromJson(response.data);
  }
}
