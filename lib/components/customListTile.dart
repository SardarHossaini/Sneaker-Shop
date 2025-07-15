import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomListTile(
    BuildContext context, String title, Icon icon, Function() onTab) {
  return ListTile(
    contentPadding: const EdgeInsets.only(left: 15),
    leading: icon,
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    onTap: onTab,
  );
}
