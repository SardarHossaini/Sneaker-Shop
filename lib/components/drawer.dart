import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/customListTile.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/feature/login.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: primaryColor,
      child: Column(
        children: [
          // code a DrawerHeader that have a logo and Line in bottom
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 5),
            child: Column(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 90,
                ),
                const Text(
                  'Sardar Hossaini',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "sardarhossaini@gmail.com",
                  style: TextStyle(fontSize: 11, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Divider(
                  color: Colors.grey[700],
                  thickness: 0.7,
                ),
              ],
            ),
          ),
          CustomListTile(
              context,
              'Home',
              const Icon(
                Icons.home_filled,
                color: Colors.white,
              ), () {
            Navigator.pop(context);
          }),
          CustomListTile(
              context,
              'Favorite',
              const Icon(
                Icons.favorite,
                color: Colors.white,
              ), () {
            Navigator.pop(context);
          }),
          CustomListTile(
              context,
              'My ADs',
              const Icon(
                Icons.view_list_rounded,
                color: Colors.white,
              ), () {
            Navigator.pop(context);
          }),
          CustomListTile(
              context,
              'Logout',
              const Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ), () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Login()));
          }),
        ],
      ),
    );
  }
}
