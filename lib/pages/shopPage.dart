import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoeTile.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';

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
              title: Text(
                "successfuly added",
                style: TextStyle(fontSize: 18),
              ),
              content: Text("Check you cart"),
            ));
  }

  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // Seach bar
          Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // child: TextField(
            //   decoration: InputDecoration(
            //     filled: true,
            //     fillColor: Colors.grey[200],
            //     hintText: 'Search',
            //     suffixIcon: Icon(Icons.search),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(30),
            //       borderSide: BorderSide.none,
            //     ),
            //   ),
            // ),
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: SearchBar(
              elevation: MaterialStatePropertyAll(1),
              hintText: 'Search',
              trailing: const [Icon(Icons.search)],
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.only(left: 10, right: 15)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
          ),
          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "everyone files.. some fly longer than others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥🔥",
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
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.shoeShop.length,
                  itemBuilder: (context, index) {
                    Shoe eachShoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: eachShoe,
                      onTab: () => addShoeToCart(eachShoe),
                    );
                  })),

          const Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
