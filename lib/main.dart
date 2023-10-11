// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:product_app/models/cart.dart';
import 'package:product_app/pages/intro_page.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
      
      );
  }
}
