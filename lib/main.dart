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
  String? country;

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
              Text(
                "choose your country",
                style: TextStyle(fontSize: 20),
              ),
              RadioListTile(
                  tileColor: const Color.fromARGB(255, 128, 189, 217),
                  activeColor: const Color.fromARGB(255, 243, 72, 33),
                  contentPadding: EdgeInsets.all(20),
                  title: Text("SYRIA"),
                  value: "syria",
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val;
                    });
                    print(val);
                  }),
              RadioListTile(
                  activeColor: Color.fromARGB(255, 26, 220, 159),
                  title: Text("EGYPT"),
                  value: "Egypt",
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val;
                    });
                    print(val);
                  }),
            ],
          ), // column
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
