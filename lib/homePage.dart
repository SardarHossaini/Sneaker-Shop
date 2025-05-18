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
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu_rounded)),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            /// A drawer header displaying the application logo
            ///
            /// Uses an image asset with a white color filter, positioned within a drawer
            /// Optionally can have a border decoration and is typically used at the top of a drawer
            DrawerHeader(
                // decoration: BoxDecoration(
                //     border: Border.all(
                //   width: 5.0,
                // )),
                // margin: EdgeInsets.only(bottom: 20),
                child: Image.asset(
              'assets/images/logo.png',
              color: Colors.white,
            )),
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
