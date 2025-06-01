import 'package:flutter/material.dart';

PreferredSizeWidget Appbarcomponent() {
  return AppBar(
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
        padding: const EdgeInsets.all(0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.person),
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
  );
}
