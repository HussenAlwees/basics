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
          title: const Text(" Stack :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 102, 223, 46),
              ),
              Positioned(
                  left: 100,
                  top: 100,
                  child: Text(
                    "Hussen",
                    style: TextStyle(fontSize: 20.5),
                  )),
            ],
          ), //Stack
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
