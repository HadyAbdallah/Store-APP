import 'package:flutter/material.dart';
import 'package:my_store/Services/GetCategoryService.dart';

import '../Models/Product.dart';
import '../Services/GetAllProductService.dart';
import 'CustomCard.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 85,
          right: 16,
          left: 16,
        ),
        child: FutureBuilder<List<Product>>(
          future: GetCategoryService().getCategory(categoryName: this.category),
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
        ));
  }
}
