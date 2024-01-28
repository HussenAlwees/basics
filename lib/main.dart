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
  bool switch_state = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Switch :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Switch(
                  activeColor: const Color.fromARGB(255, 25, 220, 31),
                  inactiveThumbColor: const Color.fromARGB(255, 234, 25, 10),
                  inactiveTrackColor: Colors.orangeAccent,
                  activeTrackColor: const Color.fromARGB(255, 33, 89, 243),
                  value: switch_state,
                  onChanged: (val) {
                    print("changed");
                    setState(() {
                      switch_state = val;
                    });
                  }) //switch
            ],
          ), // column
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
