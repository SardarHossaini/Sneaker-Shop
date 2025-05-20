import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/homePage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.yellow.shade300,
            ], // Change to your preferred colors
            // stops: [0.0, 0.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Brand new sneaker and custom kicks made with premium quality.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  decoration: BoxDecoration(),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Shop Now"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 23),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
