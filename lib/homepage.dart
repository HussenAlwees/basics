import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        actions: [
          PopupMenuButton(
              // icon: Icon(Icons.abc, color: Colors.white),
              iconSize: 30,
              iconColor: Colors.white,
              color: Color.fromARGB(255, 11, 225, 140),
              onOpened: () {
                print("opened");
              },
              onCanceled: () {
                print("canceled");
              },
              onSelected: (val) {
                print(val);
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("one"),
                      value: "valone",
                      onTap: () {
                        print("one Pressed");
                      },
                    ),
                    PopupMenuItem(
                      child: Text("two"),
                      value: "valTwo",
                      onTap: () {
                        print("Two Pressed");
                      },
                    ),
                  ]),
        ],
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
