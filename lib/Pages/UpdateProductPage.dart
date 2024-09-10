import 'package:flutter/material.dart';
import 'package:my_store/Models/Product.dart';
import 'package:my_store/Services/UpdateProduct.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../Helper/ShowSnakBar.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class UpdateProdactPage extends StatefulWidget {
  UpdateProdactPage({super.key});
  static String id = "UpdateProdactPage";

  @override
  State<UpdateProdactPage> createState() => _UpdateProdactPageState();
}

class _UpdateProdactPageState extends State<UpdateProdactPage> {
  String? productTitle, image, description;
  bool isLoding = false;
  String? price;

  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return ModalProgressHUD(
      inAsyncCall: isLoding,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 108, 63, 181),
          elevation: 0,
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(children: [
            SizedBox(
              height: 100,
            ),
            CustomTextField(
              initialValue: product.title,
              onChanged: (data) {
                productTitle = data;
              },
              hintText: "Product Title",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              initialValue: product.description,
              onChanged: (data) {
                description = data;
              },
              hintText: "Product Description",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              initialValue: product.price,
              inputType: TextInputType.number,
              onChanged: (data) {
                price = data;
              },
              hintText: "Product Price",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              initialValue: product.image,
              onChanged: (data) {
                image = data;
              },
              hintText: "Product Image",
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
                text: "Update",
                onTap: () async {
                  isLoding = true;
                  setState(() {});
                  try {
                    await updateProduct(product);
                    ShowSnakBar(context, 'Success');
                  } catch (e) {
                    ShowSnakBar(context, e.toString());
                  }
                  isLoding = false;
                  setState(() {});
                })
          ]),
        ),
      ),
    );
  }

  Future<void> updateProduct(Product product) async {
    await UpdateProductService().updateProduct(
        id: product.id,
        title: productTitle == null ? product.title : productTitle!,
        price: price == null ? product.price : price!,
        description: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
