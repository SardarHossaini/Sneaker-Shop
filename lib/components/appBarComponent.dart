import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget Appbarcomponent({title}) {
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
