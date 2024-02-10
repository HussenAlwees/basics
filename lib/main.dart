import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test_project/homepage.dart';
import 'package:new_test_project/newpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "main page : ",
      theme: theme.lightTheme,
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/newPage", page: () => newpage()),
      ],
    ); //MaterialApp
  }
}

class theme {
  static ThemeData lightTheme =
      ThemeData.light().copyWith(appBarTheme: AppBarTheme(color: Colors.red));

  static ThemeData darkTheme =
      ThemeData.dark().copyWith(appBarTheme: AppBarTheme(color: Colors.pink));
}
