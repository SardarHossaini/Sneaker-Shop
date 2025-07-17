import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/favoritePage.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget Appbarcomponent(BuildContext context, title) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: title == "Bootique" ? FontWeight.bold : null,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    actions: [
      Container(
        padding: const EdgeInsets.only(right: 12, left: 6),
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const FavoritePage()));
            },
            child: const Icon(
              Icons.favorite,
              size: 22,
            )),
      ),
    ],
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}
