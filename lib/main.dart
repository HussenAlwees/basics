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
  TextEditingController username = TextEditingController();
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
                controller: username,
              ), //TextFild
              MaterialButton(
                  child: Text("press"),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    print(username.text);
                  }) //MaterialButton
            ],
          ), //Column
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
