import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, childe) => Column(
              children: [
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hot Discount 🔥",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        // return Text("test");
                        Shoe eachShoe = value.getDiscountShoeList()[index];
                        return DiscountTile(
                          shoe: eachShoe,
                          onTab: () => addShoeToCart(eachShoe),
                          onTab2: () => addShoeToFavorite(eachShoe),
                        // );
                      }),
                ),
              ],
            ));
  }
}
