import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoeTile.dart';
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
          // Slider
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                    itemSpacing: 10,
                    indicatorRadius: 4,
                    indicatorBorderWidth: 1.5,
                    currentIndicatorColor: Colors.black,
                  ),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/test1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/test4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/test5.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
          // code a horizontal listview with 5 items
          Container(
            height: MediaQuery.of(context).size.height - 360,
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
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // code a bottom navigation bar with 4 items
          Container(
            height: MediaQuery.of(context).size.height - 50,
            child: Discount(),
          )
        ],
      ),
    );
  }
}
