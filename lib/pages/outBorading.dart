import 'package:flutter/material.dart';

import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sneaker_shop/components/outBoradingComponent.dart';
import 'package:sneaker_shop/introPage.dart';

class OutBoarding extends StatefulWidget {
  const OutBoarding({super.key});

  @override
  State<OutBoarding> createState() => _OutBoardingState();
}

class _OutBoardingState extends State<OutBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CarouselSlider(
          // slideTransform: StackTransform(),
          slideIndicator: CircularSlideIndicator(
            padding: const EdgeInsets.only(bottom: 20),
            itemSpacing: 9,
            indicatorRadius: 3.4,
            // indicatorBorderWidth: 1.5,
            // indicatorBackgroundColor: Colors.yellow,
            currentIndicatorColor: Colors.black,
          ),
          children: [
            const OutBoardingComponent(
                title: "Welcome to Sneaker Shop",
                description:
                    "Discover the latest trends in sneakers and footwear.",
                imageUrl: "assets/images/logo.png"),
            const OutBoardingComponent(
                title: "Discover Your Style",
                description:
                    "From casual to classy, explore a wide range of shoes neatly displayed for you. There’s something for everyone on our shelf.",
                imageUrl: "assets/images/screen1.jpg"),
            const OutBoardingComponent(
                title: "Get It Fast, Wear It Sooner",
                description:
                    "Enjoy lightning-fast delivery right to your doorstep. Your perfect pair of shoes is just a tap away!",
                imageUrl: "assets/images/screen2.jpg"),
            Container(
              child: const IntroPage(),
            )
          ],
        ));
  }
}
