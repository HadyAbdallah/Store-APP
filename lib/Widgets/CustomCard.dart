import 'package:flutter/material.dart';
import 'package:my_store/Models/Product.dart';
import 'package:my_store/Pages/UpdateProductPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.product,
    super.key,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProdactPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(.3),
                  spreadRadius: 0,
                  offset: Offset(10, 10))
            ]),
            child: Card(
              color: const Color.fromARGB(255, 108, 63, 181),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.split(' ')[0] +
                          ' ' +
                          product.title.split(' ')[1] +
                          ' ' +
                          product.title.split(' ')[2],
                      style: TextStyle(
                        color: Color.fromARGB(255, 245, 245, 245),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: TextStyle(
                            color: Color.fromARGB(255, 211, 172, 255),
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: -80,
              right: 30,
              child: Image.network(
                product.image,
                height: 120,
                width: 120,
              ))
        ],
      ),
    );
  }
}
