import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Icon :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Icon(
            Icons.person,
            color: Color.fromARGB(255, 18, 122, 202),
            size: 200.5,
          ), //Icon
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
