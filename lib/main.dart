import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "ProtestRevolution",
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(
              color: Color.fromARGB(255, 96, 226, 61),
              fontSize: 16,
              fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(
              color: Color.fromARGB(255, 229, 84, 84),
              fontSize: 25,
              fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
              color: Color.fromARGB(255, 41, 150, 205),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      home: Homepage(),
    ); //MaterialApp
  }
}
