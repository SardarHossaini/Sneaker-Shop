import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sneaker_shop/const.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        color: Colors.grey[400],
        tabActiveBorder: Border.all(color: Colors.white),
        activeColor: primaryColor,
        tabBackgroundColor: thirdColor,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home_filled,
            // text: "Home",
          ),
          GButton(
            icon: Icons.shopping_cart,
            // text: "Cart",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            // text: "Add",
          ),
          GButton(
            icon: Icons.notifications,
            // text: "Favorites",
          ),
          GButton(
            icon: Icons.person,
            // text: "Profile",
          ),
        ],
      ),
    );
  }
}
