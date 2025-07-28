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
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Brand new sneaker and custom kicks made with premium quality.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 130,
            ),
            Container(
                decoration: const BoxDecoration(),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text("Login"),
                )),
            const SizedBox(
              height: 8,
            ),
            Container(
                decoration: const BoxDecoration(),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignUp()));
                  },
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.black87,
                      side: const BorderSide(
                        color: Colors.black87,
                        width: 0.5,
                      ),
                      elevation: 0,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text("Sign Up"),
                )),
          ],
        ),
      ),
    );
  }
}
