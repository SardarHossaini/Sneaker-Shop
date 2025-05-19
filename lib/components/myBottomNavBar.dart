import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        tabActiveBorder: Border.all(color: Colors.white),
        activeColor: Colors.black,
        tabBackgroundColor: Colors.grey.shade100,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home_filled,
            text: "Home",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          ),
          GButton(
            icon: Icons.favorite,
            text: "Favorites",
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
