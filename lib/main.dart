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
  bool status = false;
  bool status2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" checkboxListTile :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "choose your country",
                style: TextStyle(fontSize: 20),
              ), //Text
              CheckboxListTile(
                  title: Text("Syria"),
                  activeColor: Colors.cyan,
                  checkColor: Colors.black,
                  value: status,
                  onChanged: (val) {
                    setState(() {
                      status = val!;
                    });
                  }),

              CheckboxListTile(
                  title: Text("Egypt"),
                  value: status2,
                  onChanged: (val) {
                    setState(() {
                      status2 = val!;
                    });
                  }),
            ],
          ), // column
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
