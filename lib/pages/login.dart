import 'package:flutter/material.dart';
import 'package:sneaker_shop/homePage.dart';
import 'package:sneaker_shop/pages/signUp.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              height: 100,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Login to your account",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              suffix: Icon(Icons.remove_red_eye_rounded),
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.blue),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              decoration: BoxDecoration(),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 23),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
              )),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "------- Or sign in with -------",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 20, left: 20),
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
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 20, left: 20),
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
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 20, left: 20),
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
          ]),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
