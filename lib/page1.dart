import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test_project/homepage.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1();
}

class _page1 extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX page1 : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              color: Colors.green,
              onPressed: () {
                Get.offAll(Homepage());
              },
              child: const Text("Go to home using offAll"),
            ),
          ),
        ],
      ),
    );
  }
}
