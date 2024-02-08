import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test_project/homepage.dart';
import 'package:new_test_project/local_language/locale.dart';
import 'package:new_test_project/settingsservices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  runApp(MyApp());
}

Future initalServices() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "main page : ",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: Get.deviceLocale,
      translations: MyLocale(),
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => Home()),
      ],
    ); //MaterialApp
  }
}
