import 'package:flutter/material.dart';
import 'package:sneaker_shop/model/shoe.dart';

class DiscountTile extends StatefulWidget {
  final Shoe shoe;
  final Function()? onTab;
  final Function()? onTab2;
  const DiscountTile(
      {super.key,
      required this.shoe,
      required this.onTab,
      required this.onTab2});

  @override
  State<DiscountTile> createState() => _DiscountTileState();
}

class _DiscountTileState extends State<DiscountTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.shoe.imagepath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          // Text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.shoe.name,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 5),
              Text(
                "\$${widget.shoe.price}",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          // Button
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: widget.onTab2,
                  icon: const Icon(Icons.favorite_border_outlined)),
              IconButton(onPressed: widget.onTab, icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
