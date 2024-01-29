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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar : "),
            backgroundColor: const Color.fromARGB(255, 175, 206, 232),
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Laptops")),
                Tab(child: Text("Mobiles")),
                Tab(child: Text("Ipads")),
              ],
            ), //TabBar
          ), //AppBar
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: TabBarView(
              children: [
                Text("All Laptops are there"),
                Text("All Mobiles are there"),
                Text("All Ipads are there"),
              ],
            ), //TabBarView
          ), //container
        ), //Scaffold
      ), //DefaultTabController
    ); //MaterialApp
  }
}
