import 'package:flutter/material.dart';
import 'package:my_store/Models/Product.dart';
import 'package:my_store/Services/GetAllProductService.dart';
import 'package:my_store/Widgets/HomeBody.dart';

import '../Widgets/CategoryBody.dart';
import '../Widgets/CustomCard.dart';

class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  static const List<Widget> _widgetOptions = <Widget>[
    CategoryBody(category: "men's clothing"),
    CategoryBody(category: "women's clothing"),
    HomeBody(),
    CategoryBody(category: "electronics"),
    CategoryBody(category: "jewelery"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 108, 63, 181),
        elevation: 0,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 153, 152, 152),
        selectedItemColor: Color.fromARGB(255, 90, 50, 160),
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.boy),
            label: "Men",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.girl),
            label: "Women",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.devices_other),
            label: 'Electronics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond),
            label: 'Jewelery',
          ),
        ],
      ),
    );
  }
}
