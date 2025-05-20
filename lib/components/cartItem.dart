import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false)
        .deleteItemFromUserCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.shoe.imagepath,
            )),
        title: Text(widget.shoe.name),
        subtitle: widget.shoe.discount != "0%"
            ? Text(
                "\$${widget.shoe.discountPrice}",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Text(
                "\$${widget.shoe.price}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
        trailing: IconButton(
          onPressed: removeItem,
          icon: Icon(
            Icons.delete,
          ),
        ),
      ),
    );
  }
}
