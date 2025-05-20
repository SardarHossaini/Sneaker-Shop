import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker_shop/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final Function()? onTab;
  final Function()? onTab2;
  ShoeTile(
      {super.key,
      required this.shoe,
      required this.onTab,
      required this.onTab2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.only(left: 20, right: 15),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              shoe.imagepath,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoe.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "\$" + shoe.price,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: onTab,
                          child: Container(
                              padding: const EdgeInsets.only(right: 5),
                              child: const Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 26,
                              )),
                        ),
                        GestureDetector(
                          onTap: onTab2,
                          child: Container(
                              padding: const EdgeInsets.only(left: 5),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 26,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // description
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                child: Text(
                  shoe.description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ],
          )
          // price + details
        ],
      ),
    );
  }
}
