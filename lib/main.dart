import 'package:flutter/material.dart';
import 'package:my_store/Pages/HomePage.dart';

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
      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
