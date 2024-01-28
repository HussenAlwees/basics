import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String written_text = "";
  bool Print = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" features TextField :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Column(
            children: [
              TextField(
                onChanged: (val) {
                  setState(() {
                    written_text = val;
                  });
                },
              ), //TextFild
              MaterialButton(
                child: Text("print"),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    Print = !Print;
                  });
                },
              ),
              if (Print == true)
                Text(
                  "You wrote : $written_text",
                  style: TextStyle(fontSize: 20),
                ),
              if (Print == false) Text(""),
            ],
          ), //Column
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
