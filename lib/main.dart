import 'package:flutter/material.dart';
import 'package:new_test_project/custom_card.dart';

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
          title: Text("shortcut : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Custom_List_Tile(
                  name: 'Hussen',
                  email: 'hussen.alwees@gamil.com',
                  date: "2024",
                  imagename: 'download.jpg'),
              Custom_List_Tile(
                  name: 'Ali',
                  email: 'Ali.al@gamil.com',
                  date: "2025",
                  imagename: 'flutter_image.jpg'),
            ],
          ),
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
