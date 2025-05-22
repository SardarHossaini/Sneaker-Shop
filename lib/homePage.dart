import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/myBottomNavBar.dart';
import 'package:sneaker_shop/pages/favoritePage.dart';
import 'const.dart';

import 'pages/aboutPage.dart';
import 'pages/discount.dart';
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
    ShoePage(),
    CartPage(),
    FavoritePage(),
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
        title: Text(
          "Bootique",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(Icons.menu_rounded),
              )),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            // code a DrawerHeader that have a logo and Line in bottom
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey[800],
                    thickness: 1,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: ListTile(
                leading: Icon(Icons.logout_outlined, color: Colors.white),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
