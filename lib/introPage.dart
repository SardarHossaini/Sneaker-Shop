import 'package:flutter/material.dart';
// import 'package:sneaker_shop/const.dart';
// import 'package:sneaker_shop/homePage.dart';
import 'package:sneaker_shop/pages/login.dart';
import 'package:sneaker_shop/pages/signUp.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 150,
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
              height: 130,
            ),
            Container(
                decoration: BoxDecoration(),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
            SizedBox(
              height: 8,
            ),
            Container(
                decoration: BoxDecoration(),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.black87,
                      side: BorderSide(
                        color: Colors.black87,
                        width: 0.5,
                      ),
                      elevation: 0,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                )),
          ],
        ),
      ),
    );
  }
}
