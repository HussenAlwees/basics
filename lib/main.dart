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
  List numberOfPages = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("pageView.builder : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 300,
                child: PageView.builder(
                  reverse: false,
                  // physics: NeverScrollableScrollPhysics(),
                  onPageChanged: (val) {
                    print(val);
                  },
                  itemCount: numberOfPages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      "Page $index",
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              )
            ],
          ),
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
