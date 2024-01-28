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
                  prefix: Icon(Icons.person),
                  hintText: "userName",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ), //TextFild

              const TextField(
                decoration: InputDecoration(
                  prefixText: "Enter the name:",
                  hintStyle: TextStyle(color: Colors.grey),
                ), //InputDecoration
              ), //TextFild
              const TextField(
                decoration: InputDecoration(
                  suffix: Icon(Icons.turn_right),
                  labelText: "this is labelText",
                ), //InputDecoration
              ), //TextFild

              const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.post_add),
                  suffixIconColor: Colors.black,
                  labelText: "write here",
                  hintStyle: TextStyle(color: Colors.grey),
                ), //InputDecoration
              ), //TextFild

              const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.access_alarm),
                  fillColor: Colors.blue,
                  filled: true,
                ), //InputDecoration
              ), //TextFild
            ],
          ), //Column
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
