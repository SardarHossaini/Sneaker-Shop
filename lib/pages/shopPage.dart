import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoeTile.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';
import 'package:sneaker_shop/pages/discount.dart';
import "package:flutter_carousel_slider/carousel_slider.dart";

class ShoePage extends StatefulWidget {
  const ShoePage({super.key});

  @override
  State<ShoePage> createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
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
              content: Text("Check you cart"),
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
              content: Text("Check you favorite"),
            ));
  }

  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => ListView(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: Text(
          //     "Catagories",
          //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //   ),
          // ),
          // const SizedBox(
          //   height: 5,
          // ),
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        catagories[index],
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
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
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            height: 200,
            child: CarouselSlider(
                enableAutoSlider: true, // این خط را اضافه کنید
                autoSliderDelay: Duration(seconds: 3),
                autoSliderTransitionTime: Duration(seconds: 1),
                unlimitedMode: true,
                slideIndicator: CircularSlideIndicator(
                  padding: const EdgeInsets.only(bottom: 20),
                  itemSpacing: 8,
                  indicatorRadius: 3,
                  indicatorBorderWidth: 1.5,
                  currentIndicatorColor: Colors.black,
                ),
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

          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // code a horizontal listview with 5 items
          Container(
            height: MediaQuery.of(context).size.height - 310,
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

          const Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Divider(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // code a bottom navigation bar with 4 items
          Container(
            height: MediaQuery.of(context).size.height - 30,
            child: Discount(),
          ),
          // Newest
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
          SizedBox(
            height: 10,
          ),
          // code a horizontal listview with 5 items
          Container(
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
