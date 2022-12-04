import 'package:flutter/material.dart';

import 'cart_screen/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
         
        ),
      ),
      home: const CartScreen(),
    );
  }
}
 