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
          title: const Text(" Icon button :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: IconButton(
            onPressed: () {
              print("icon is pressed");
            },
            iconSize: 100.5,
            icon: const Icon(
              Icons.person,
            ), //Icon
          ), //IconButton
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
