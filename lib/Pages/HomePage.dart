import 'package:flutter/material.dart';
import 'package:my_store/Models/Product.dart';
import 'package:my_store/Services/GetAllProductService.dart';

import '../Widgets/CustomCard.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(
              top: 85,
              right: 16,
              left: 16,
            ),
            child: FutureBuilder<List<Product>>(
              future: AllProductsService().getAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Product> productsList = snapshot.data!;
                  return GridView.builder(
                      itemCount: productsList.length,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 100,
                      ),
                      itemBuilder: (context, index) {
                        return CustomCard(product: productsList[index]);
                      });
                } else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              },
            )));
  }
}
