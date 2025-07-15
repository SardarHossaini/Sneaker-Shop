import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/customTextFeild.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/homePage.dart';
import 'package:sneaker_shop/pages/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 70,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create new account",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "From casual to classy, explore a wide range of shoes neatly displayed for you.",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Customtextfeild(
                title: "Full Name",
                hintText: "Sardar Hossaini",
              ),
              const SizedBox(
                height: 8,
              ),
              Customtextfeild(
                title: "Email",
                hintText: "example@gmail.com",
              ),
              const SizedBox(
                height: 8,
              ),
              Customtextfeild(
                title: "Password",
                icon: true,
                obScureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: thirdColor,
                  ),
                  const Text(
                    "agree with ",
                    style: TextStyle(fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "condition & terms",
                      style: TextStyle(color: thirdColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    child: const Text("Sign up"),
                  )),
              const SizedBox(
                height: 16,
              ),
              const Center(
                child: Text(
                  "────────────   or   ────────────",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 15, left: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/google.png"),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/apple.png"),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 15, left: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/facebook.png"),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: thirdColor,
                        decoration: TextDecoration.underline,
                        decorationColor: thirdColor,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
