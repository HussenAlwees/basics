import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test_project/Loginpage.dart';
import 'package:new_test_project/homepage.dart';
import 'package:new_test_project/middleware/auth_middleware.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
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
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/", page: () => Login(), middlewares: [AuthMiddleWare()]),
        GetPage(name: "/home", page: () => Home()),
      ],
    ); //MaterialApp
  }
}
