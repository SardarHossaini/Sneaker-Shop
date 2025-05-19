import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker_shop/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              shoe.imagepath,
              fit: BoxFit.cover,
            ),
          ),
          // description
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600]),
          ),
          // price + details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text(shoe.name), Text(shoe.price)],
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
