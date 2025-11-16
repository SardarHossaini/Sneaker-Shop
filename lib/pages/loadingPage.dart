
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoeTile.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';
import 'package:sneaker_shop/pages/discount.dart';
import "package:flutter_carousel_slider/carousel_slider.dart";

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToUserCart(shoe);

    // show dialog
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: const Text(
                "successfuly added",
                style: TextStyle(fontSize: 18),
              ),
              content:const Text("Check you cart"),
            ));
  }

  void addShoeToFavorite(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToFavorite(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: const Text(
                "successfuly added",
                style: TextStyle(fontSize: 18),
              ),
              content: const Text("Check you favorite"),
              content: const Text("Check you favorite"),
            ));
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: 25,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catagories.length,
                // shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          icons[index],
                          size: 20,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Center(
                          child: Text(
                            catagories[index],
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // Slider
          Container(
            decoration: const BoxDecoration(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            height: 200,
            child: CarouselSlider(
                enableAutoSlider: true,
                autoSliderDelay: const Duration(seconds: 3),
                autoSliderTransitionTime: const Duration(seconds: 1),
                unlimitedMode: true,
                slideIndicator: CircularSlideIndicator(
                    padding: const EdgeInsets.only(bottom: 10),
                    itemSpacing: 8,
                    indicatorRadius: 3,
                    indicatorBorderWidth: 1.5,
                    currentIndicatorColor: Colors.white,
                    indicatorBackgroundColor: Colors.grey),
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/test1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/test4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/test5.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          // Catagory
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: thirdColor, fontSize: 12),
                )
              ],
            ),
          ),
          const SizedBox(
          const SizedBox(
            height: 10,
          ),
          // code a horizontal listview with 5 items
          SizedBox(
            height: MediaQuery.of(context).size.height - 350,
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    Shoe eachShoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: eachShoe,
                      onTab: () => addShoeToCart(eachShoe),
                      onTab2: () => addShoeToFavorite(eachShoe),
                    );
                  }),
            ),
          ),

          const SizedBox(
            height: 12,
          ),
          // code a bottom navigation bar with 4 items
          SizedBox(
          SizedBox(
            height: MediaQuery.of(context).size.height - 30,
            child: const Discount(),
            child: const Discount(),
          ),
          // Newest
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Newest 🆕",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                )
              ],
            ),
          ),
          const SizedBox(
          const SizedBox(
            height: 10,
          ),
          // code a horizontal listview with 5 items
          SizedBox(
          SizedBox(
            height: MediaQuery.of(context).size.height - 320,
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    Shoe eachShoe = value.getNewestShoeList()[index];
                    return ShoeTile(
                      shoe: eachShoe,
                      onTab: () => addShoeToCart(eachShoe),
                      onTab2: () => addShoeToFavorite(eachShoe),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
