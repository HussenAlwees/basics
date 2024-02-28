// main.dart
import 'package:flutter/material.dart';

import 'package:new_test_project/model/model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return FutureProvider<MyModel>(
      initialData: MyModel(someValue: 'default value'),
      create: (context) => someAsyncFunctionToGetMyModel(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          title: "My App",
          home: Scaffold(
            appBar: AppBar(
              title: Text("Home page"),
              backgroundColor: Colors.blue,
            ), //AppBar
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.green,
                  child: Consumer<MyModel>(
                    builder: (context, value, child) {
                      return MaterialButton(
                        child: Text("get data"),
                        onPressed: () {
                          value.dosomething();
                        },
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(35),
                  color: Colors.blue,
                  child: Consumer<MyModel>(
                    builder: (context, value, child) {
                      print("builder");
                      return Text(value.someValue);
                    },
                  ),
                ),
              ],
            ),
          ) //MateialApp,
          ),
    );
  }
}
