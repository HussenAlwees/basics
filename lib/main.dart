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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 133, 196, 228),
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/download.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text("Hussen"),
                        subtitle: Text("hussen.alwees@gmail.com"),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("home"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("About us"),
                  leading: Icon(Icons.help),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("contact us"),
                  leading: Icon(Icons.phone),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("signOut"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        endDrawer: Drawer(),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [],
          ), //Column
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
