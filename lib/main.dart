import 'package:flutter/material.dart';
import 'package:my_store/Pages/HomePage.dart';
import 'package:my_store/Pages/UpdateProductPage.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProdactPage.id: (context) => UpdateProdactPage(),
      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
