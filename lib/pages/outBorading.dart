import 'package:flutter/material.dart';

import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sneaker_shop/components/outBoradingComponent.dart';
import 'package:sneaker_shop/const.dart';
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
          slideIndicator: CircularWaveSlideIndicator(
            padding: const EdgeInsets.only(bottom: 20),
            itemSpacing: 8.5,
            indicatorRadius: 3.2,
            currentIndicatorColor: primaryColor,
          ),
          children: const [
            OutBoardingComponent(
                title: "Welcome to Sneaker Shop",
                description:
                    "Discover the latest trends in sneakers and footwear.",
                imageUrl: "assets/images/logo.png"),
            OutBoardingComponent(
                title: "Discover Your Style",
                description:
                    "From casual to classy, explore a wide range of shoes neatly displayed for you. There’s something for everyone on our shelf.",
                imageUrl: "assets/images/screen1.jpg"),
            OutBoardingComponent(
                title: "Get It Fast, Wear It Sooner",
                description:
                    "Enjoy lightning-fast delivery right to your doorstep. Your perfect pair of shoes is just a tap away!",
                imageUrl: "assets/images/screen2.jpg"),
            IntroPage()
          ],
        ));
  }
}
