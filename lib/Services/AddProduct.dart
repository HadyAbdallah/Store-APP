import 'package:my_store/Helper/Api.dart';
import 'package:my_store/Models/Product.dart';

class AddProduct {
  Future<Product> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Api().post(url: "https://fakestoreapi.com/products", body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });
  }
}
