import 'package:flutter/material.dart';
import 'package:new_test_project/homepage.dart';
import 'package:new_test_project/pageOne.dart';
import 'package:new_test_project/pageTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      routes: {
        "homepage": (context) => Homepage(),
        "page1": (context) => page1(),
        "page2": (context) => page2(),
      },
    ); //MaterialApp
  }
}
