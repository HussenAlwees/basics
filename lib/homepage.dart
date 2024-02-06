import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:new_test_project/page1.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX home page : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    Get.to(page1());
                  },
                  child: const Text("Go to page 1 using to"),
                ),
                MaterialButton(
                  color: Color.fromARGB(255, 208, 228, 92),
                  onPressed: () {
                    Get.toNamed("/page1");
                  },
                  child: const Text("Go to page 1 using name"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
