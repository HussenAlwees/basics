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
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Statefulwidget :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    i++;
                  });

                  print(i);
                },
                icon: Icon(Icons.add),
              ),
              Text("Counter $i"),
              IconButton(
                onPressed: () {
                  setState(() {
                    i--;
                  });
                  print(i);
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ), // column
        ), //Container
      ), //Scaffold
    );
  }
}
