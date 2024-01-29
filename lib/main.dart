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
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.safety_check),
          ),
          elevation: 20.5,
          shadowColor: Colors.red,
          titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 1, 129, 67)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            Text(
              "Hussen",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
          centerTitle: true,
          title: Text("AppBar  "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [],
          ), //Column
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
