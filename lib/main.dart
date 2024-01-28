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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 32, 119, 205),
          shape: CircleBorder(eccentricity: 0.5),
          onPressed: () {
            print("Hussen");
          },
        ), //FloatingActionButton
        appBar: AppBar(
          title: const Text(" floatingActionButton :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Column(
            children: [],
          ), // column
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
