// main.dart
import 'package:flutter/material.dart';
import 'package:new_test_project/home.dart';
import 'package:provider/provider.dart';

import 'model/cart.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        title: "Smart Home",
        home: Home(),
      ), //MateialApp
    ); //changeNotifierProvider
  }
}
