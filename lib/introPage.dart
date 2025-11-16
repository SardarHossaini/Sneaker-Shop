import 'package:flutter/material.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/pages/login.dart';
import 'package:sneaker_shop/pages/signUp.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: spacingPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 130,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Brand new sneaker and custom kicks made with premium quality.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: const Text("Login"),
                        )),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          style: ElevatedButton.styleFrom(
                              // backgroundColor: Colors.black87,
                              side: BorderSide(
                                color: primaryColor,
                                width: 0.7,
                              ),
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: const Text("Sign Up"),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
