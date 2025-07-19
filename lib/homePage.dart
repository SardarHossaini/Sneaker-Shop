import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/appBarComponent.dart';
import 'package:sneaker_shop/components/drawer.dart';
import 'package:sneaker_shop/components/myBottomNavBar.dart';
import 'package:sneaker_shop/pages/cartPage.dart';
import 'package:sneaker_shop/pages/favoritePage.dart';
import 'package:sneaker_shop/pages/profilePage.dart';
import 'package:sneaker_shop/pages/shoppingPage.dart';
import 'pages/loadingPage.dart';

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
    const LoadingPage(),
    const ShoppingPage(),
    const CartPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];
  final List<String> titles = [
    'Bootique',
    "Shopping",
    "My Card",
    "Notifications",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      appBar: Appbarcomponent(context, titles[_selectedIndex]),
      drawer: DrawerComponent(context),
      body: pages[_selectedIndex],
    );
  }
}
