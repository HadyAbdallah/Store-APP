import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class UpdateProdactPage extends StatelessWidget {
  const UpdateProdactPage({super.key});
  static String id = "UpdateProdactPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(children: [
            CustomFormTextField(
              hintText: "Product Title",
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: "Product Description",
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: "Product Price",
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormTextField(
              hintText: "Product Image",
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: "Update",
            )
          ]),
        ),
      ),
    );
  }
}
