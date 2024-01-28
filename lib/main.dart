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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" TextField :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.person),
                  hintText: "userName",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ), //TextFild
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.password),
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ), //TextFild
            ],
          ), //Column
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
