import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoeTile.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  List<String> subCatagory = [
    "Newest",
    "Popular",
    "Best Seller",
    "Most Loved",
    "Discounts"
  ];
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
              content: const Text("Check you cart"),
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
            ));
  }

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, childe) => Column(
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
                          padding:const EdgeInsets.symmetric(horizontal: 10),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              catagories[index],
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
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
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 25,
                  child: Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: subCatagory.length,
                      // shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          padding:const EdgeInsets.symmetric(horizontal: 10),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              subCatagory[index],
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // code a horizontal listview with 5 items
                Container(
                  padding: const EdgeInsets.only(left: 0, right: 10),
                  // margin: EdgeInsets.only(bottom: 20),
                  height: MediaQuery.of(context).size.height - 234,
                  child: Expanded(
                    child: ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.vertical,
                        itemCount: value.getShoeList().length,
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
              ],
            ));
  }
}
