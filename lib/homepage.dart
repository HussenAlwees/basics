import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  List<Map> username = [
    {'name': 'Hussen', 'age': 23},
    {'name': 'ALi', 'age': 14},
    {'name': 'Amar', 'age': 16},
    {'name': 'Rami', 'age': 45},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Initial State : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed("page1");
            },
            child: Text("Go To page one"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed("page2");
            },
            child: Text("Go To page Two"),
          ),
        ],
      ),
    );
  }
}
