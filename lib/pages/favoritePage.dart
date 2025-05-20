import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/model/cart.dart';

import '../components/favoriteTile.dart';
import '../model/shoe.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Favorite",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.getFavoriteShoes().length,
                    itemBuilder: (context, index) {
                      Shoe eachShoe = value.getFavoriteShoes()[index];
                      return FavoriteTile(shoe: eachShoe);
                    }))
          ],
        ),
      );
    });
  }
}
