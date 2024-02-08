import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test_project/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "main page : ",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => Home()),
      ],
    ); //MaterialApp
  }
}
