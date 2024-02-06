import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:new_test_project/controller/homecontroller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Obx state managment : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Row(
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
                    child: Text(
                      "${controller.counter.value}",
                      style: TextStyle(fontSize: 20),
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
            ),
          ],
        ),
      ),
    );
  }
}
