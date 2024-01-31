import 'package:flutter/material.dart';
import 'package:new_test_project/aboutus.dart';
import 'package:new_test_project/contactus.dart';
import 'package:new_test_project/homepage.dart';

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
      home: Homepage(),
      routes: {
        "home": (context) => Homepage(),
        "about us": (context) => AboutUs(),
        "contact us": (context) => Contact_Us(),
      },
    ); //MaterialApp
  }
}
