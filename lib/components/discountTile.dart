import 'package:flutter/material.dart';
import 'package:sneaker_shop/model/shoe.dart';

class DiscountTile extends StatelessWidget {
  final Shoe shoe;
  final Function()? onTab;
  final Function()? onTab2;
  const DiscountTile(
      {super.key,
      required this.shoe,
      required this.onTab,
      required this.onTab2});

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
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(shoe.imagepath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              // Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    shoe.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$" + shoe.price,
                        style: TextStyle(
                            color: Colors.grey[400],
                            decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$" + shoe.discountPrice,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        shoe.discount,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          // Button
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: onTab2,
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 26,
                  )),
              IconButton(
                  onPressed: onTab,
                  icon: const Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                    size: 26,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
