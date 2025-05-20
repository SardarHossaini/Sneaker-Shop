import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Discount 🔥",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // ListView.builder(
        //     // scrollDirection: Axis.horizontal,
        //     itemCount: 5,
        //     itemBuilder: (context, index) {
        //       // Shoe eachShoe = value.getShoeList()[index];
        //       // return ShoeTile(
        //       //   shoe: eachShoe,
        //       //   onTab: () => addShoeToCart(eachShoe),
        //       //   onTab2: () => addShoeToFavorite(eachShoe),
        //       // );
        //       return Text("Index $index");
        //     }),
      ],
    );
  }
}
