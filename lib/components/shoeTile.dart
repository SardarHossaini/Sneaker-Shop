import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker_shop/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final Function()? onTab;
  ShoeTile({super.key, required this.shoe, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.only(left: 20, right: 15),
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
            ),
          ),
          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "\$" + shoe.price,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: onTab,
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
