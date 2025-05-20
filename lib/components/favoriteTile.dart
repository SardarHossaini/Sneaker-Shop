import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';

class FavoriteTile extends StatefulWidget {
  final Shoe shoe;
  const FavoriteTile({super.key, required this.shoe});

  @override
  State<FavoriteTile> createState() => _FavoriteTileState();
}

class _FavoriteTileState extends State<FavoriteTile> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false)
        .deleteItemFromFavorite(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.shoe.imagepath,
            )),
        title: Text(widget.shoe.name),
        subtitle: widget.shoe.discount != "0%"
            ? Text(
                "\$" + widget.shoe.discountPrice,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )
            : Text(
                "\$" + widget.shoe.price,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
        trailing: IconButton(
          onPressed: removeItem,
          icon: const Icon(
            Icons.delete,
          ),
        ),
      ),
    );
  }
}
