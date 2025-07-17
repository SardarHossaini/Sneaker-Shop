import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/appBarComponent.dart';
import 'package:sneaker_shop/model/cart.dart';

import '../components/favoriteTile.dart';
import '../model/shoe.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Favorite",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
        ),
      );
    });
  }
}
