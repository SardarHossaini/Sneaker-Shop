import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/login.dart';

import '../homePage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 80,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Create your account",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffix: Icon(Icons.remove_red_eye_rounded),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (bool? newValue) {
                        setState(() {
                          value = newValue!;
                        });
                      },
                      activeColor: Colors.black87,
                      checkColor: Colors.white,
                    ),
                    const Text("I agree to the Terms and Conditions"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text("Sign Up"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4))),
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "───────── Or sign up with ─────────",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 15, left: 15),
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
                    margin: EdgeInsets.only(right: 10, left: 10),
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
                    margin: EdgeInsets.only(right: 15, left: 15),
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "login",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    ));
  }
}
