import 'package:flutter/material.dart';
import 'package:sneaker_shop/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final Function()? onTab;
  final Function()? onTab2;
  const ShoeTile(
  const ShoeTile(
      {super.key,
      required this.shoe,
      required this.onTab,
      required this.onTab2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(left: 15, right: 5),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // image
          SizedBox(
            height: 160,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                shoe.imagepath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: Text(
                  shoe.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Text(
                  shoe.description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$${shoe.price}",
                      style: const TextStyle(
                      "\$${shoe.price}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: onTab,
                          child: Container(
                              padding: const EdgeInsets.only(right: 5),
                              child: const Icon(
                                Icons.shopping_bag,
                                color: Colors.black,
                              )),
                        ),
                        GestureDetector(
                          onTap: onTab2,
                          child: Container(
                              padding: const EdgeInsets.only(left: 5),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // description
            ],
          )
          // price + details
        ],
      ),
    );
  }
}
