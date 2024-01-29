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
          title: Text("pageView : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 300,
                child: PageView(
                  reverse: false,
                  // physics: NeverScrollableScrollPhysics(),
                  onPageChanged: (val) {
                    print(val);
                  },
                  children: [
                    Text("Page1"),
                    Text("page2"),
                    // Image.asset("download.jpg", fit: BoxFit.cover),
                    // Image.asset("flutter_image.jpg", fit: BoxFit.cover),
                  ],
                ),
              )
            ],
          ),
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
