// main.dart
import 'package:flutter/material.dart';
import 'package:new_test_project/home.dart';
import 'package:new_test_project/model/model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(create: (context) {
          return MyModel();
        }),
        ProxyProvider<MyModel, AnotherModel>(update: ((context, value, previous) {
          return AnotherModel(value);
        }))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        title: "Smart Home",
        home: Home(),
      ), //MateialApp,
    );
  }
}
