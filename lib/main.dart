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
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar : "),
            backgroundColor: const Color.fromARGB(255, 175, 206, 232),
            bottom: TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 5,
              labelColor: Color.fromARGB(255, 21, 149, 229),
              labelStyle: TextStyle(fontSize: 20),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(fontSize: 10),
              tabs: [
                Tab(icon: Icon(Icons.laptop), text: "Laptops"),
                Tab(icon: Icon(Icons.mobile_friendly), text: "Mobile"),
              ],
            ), //TabBar
          ), //AppBar
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: TabBarView(
              children: [
                Text("All Laptops are there"),
                Text("All Mobiles are there"),
              ],
            ), //TabBarView
          ), //container
        ), //Scaffold
      ), //DefaultTabController
    ); //MaterialApp
  }
}
