import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:new_test_project/controller/homecontroller.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key});
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScreenTwo : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {
                      controller.icrement();
                    },
                    icon: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
                Center(
                  child: GetBuilder<HomeController>(
                    builder: (controller) => Text(
                      "${controller.counter}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
