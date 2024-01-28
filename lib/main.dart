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
          title: const Text(" ListTile in Card :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Icon(
            Icons.baby_changing_station,
            color: Colors.black,
          ),
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
