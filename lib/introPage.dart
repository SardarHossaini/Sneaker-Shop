import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker_shop/const.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 250,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Just Do It",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: Text(
                "Brand new sneaker and custom kicks made with premium quality.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                decoration: BoxDecoration(),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Shop Now"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 23)),
                ))
          ],
        ),
      ),
    );
  }
}
