import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:sneaker_shop/homePage.dart';
// import 'package:sneaker_shop/homePage.dart';
// import 'package:sneaker_shop/introPage.dart';
// import 'package:sneaker_shop/pages/login.dart';
import 'package:sneaker_shop/model/cart.dart';

import 'pages/screenSplish.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const SplashScreen(),
        // home: HomePage(),
      ),
    );
  }
}
