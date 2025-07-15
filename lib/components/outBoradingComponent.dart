import 'package:flutter/material.dart';
import 'package:sneaker_shop/const.dart';

class OutBoardingComponent extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const OutBoardingComponent({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: spacingPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 150,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: secondaryColor,
              fontSize: 14,
            ),
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         color: Colors.red,
          //         margin: EdgeInsets.symmetric(horizontal: 3),
          //         child: const Text(
          //           "Pervious",
          //           style: TextStyle(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         color: Colors.red,
          //         margin: EdgeInsets.symmetric(horizontal: 3),
          //         child: const Text(
          //           "Next",
          //           style: TextStyle(color: Colors.white),
          //         ),
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
