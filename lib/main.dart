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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                  color: const Color.fromARGB(255, 97, 118, 156),
                  textColor: Colors.white,
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Text("Open Drawer"),
                ),
              ),
            ],
          ), //Column
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
