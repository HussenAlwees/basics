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
          title: const Text(" Button :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Column(
            children: [
              MaterialButton(
                color: Colors.cyan,
                textColor: Colors.pink,
                minWidth: 200,
                height: 40,
                padding: EdgeInsets.all(30),
                onLongPress: () => print("long press on the button "),
                onPressed: () {
                  print("the button is pressed");
                },
                child: Text(
                  "Hussen",
                  style: TextStyle(fontSize: 30.5),
                ),
              ),
            ],
          ), // column
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
