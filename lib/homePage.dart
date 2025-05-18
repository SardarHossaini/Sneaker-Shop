import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/myBottomNavBar.dart';
import 'const.dart';

import 'pages/aboutPage.dart';
import 'pages/profilePage.dart';
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
    ShopPage(),
    CartPage(),
    AboutPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      body: pages[_selectedIndex],
    );
  }
}
