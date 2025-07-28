import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13),
      padding: const EdgeInsets.only(bottom: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        tabActiveBorder: Border.all(color: Colors.white),
        activeColor: Colors.black,
        tabBackgroundColor: Colors.grey.shade100,
        // tabMargin: EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
            icon: Icons.add,
            // text: "Add",
          ),
          GButton(
            icon: Icons.favorite,
            // text: "Favorites",
          ),
          GButton(
            icon: Icons.shopping_bag,
            // text: "Profile",
          ),
        ],
      ),
    );
  }
}
