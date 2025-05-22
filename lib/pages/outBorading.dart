import 'package:flutter/material.dart';

import 'package:flutter_carousel_slider/carousel_slider.dart';
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
        body: CarouselSlider(
      // slideTransform: StackTransform(),
      slideIndicator: CircularSlideIndicator(
        padding: EdgeInsets.only(bottom: 20),
        itemSpacing: 15,

        // indicatorBackgroundColor: Colors.yellow,
        currentIndicatorColor: Colors.black,
      ),
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Sneaker Shop',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Discover the latest trends in sneakers and footwear.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/screen1.jpg',
                height: 280,
              ),
              SizedBox(height: 20),
              Text(
                'Discover Your Style',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'From casual to classy, explore a wide range of shoes neatly displayed for you. There’s something for everyone on our shelf.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/screen2.jpg',
                height: 280,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Get It Fast, Wear It Sooner',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Enjoy lightning-fast delivery right to your doorstep. Your perfect pair of shoes is just a tap away!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: IntroPage(),
        )
      ],
    ));
  }
}
