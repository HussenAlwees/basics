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
  int selectedindex = 0;

  List<Widget> pages = [
    Text("Home", style: TextStyle(fontSize: 20.5)),
    Text("Search", style: TextStyle(fontSize: 20.5)),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigationBar : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              selectedindex = val;
            });
          },
          currentIndex: selectedindex,
          backgroundColor: Colors.blue,
          selectedItemColor: const Color.fromARGB(255, 3, 118, 7),
          unselectedItemColor: Colors.black,
          selectedFontSize: 20,
          unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
        ), //BottomNavigationBar
        body: Container(
          child: pages.elementAt(selectedindex),
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
