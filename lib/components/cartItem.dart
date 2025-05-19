import 'package:flutter/material.dart';
import 'package:sneaker_shop/model/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagepath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
    );
  }
}
