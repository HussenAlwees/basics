import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TabBar : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
          bottom: TabBar(
            controller: tabController,
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
            controller: tabController,
            children: [
              Column(
                children: [
                  Text("this is laptop page"),
                  MaterialButton(
                      child: Text("press to go to mobile page"),
                      color: Colors.blue,
                      onPressed: () {
                        tabController!.animateTo(1);
                      })
                ],
              ),
              Column(
                children: [
                  Text("this is mobile page"),
                  MaterialButton(
                      child: Text("press to go to laptop page"),
                      color: Colors.blue,
                      onPressed: () {
                        tabController!.animateTo(0);
                      })
                ],
              ),
            ],
          ), //TabBarView
        ), //container
      ), //Scaffold
      //DefaultTabController
    ); //MaterialApp
  }
}
