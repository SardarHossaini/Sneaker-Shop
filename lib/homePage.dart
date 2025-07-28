import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/appBarComponent.dart';
import 'package:sneaker_shop/components/drawer.dart';
import 'package:sneaker_shop/components/myBottomNavBar.dart';
import 'package:sneaker_shop/pages/addPage.dart';
import 'package:sneaker_shop/pages/favoritePage.dart';
import 'package:sneaker_shop/pages/shoppingPage.dart';
import 'const.dart';

// import 'pages/aboutPage.dart';
// import 'pages/discount.dart';
import 'pages/shopPage.dart';
import 'pages/cartPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const ShoePage(),
    const ShoppingPage(),
    const AddPage(),
    const FavoritePage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      appBar: Appbarcomponent(),
      drawer: const DrawerComponent(),
      body: pages[_selectedIndex],
    );
  }
}
