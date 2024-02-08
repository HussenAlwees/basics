import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test_project/controller/newpage_controller.dart';

// ignore: must_be_immutable
class newpage extends StatelessWidget {
  newpage({super.key});

  @override
  Widget build(BuildContext context) {
    NewPage_controller controller = Get.put(NewPage_controller());
    return Scaffold(
      appBar: AppBar(
        title: Text("New page"),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text("${controller.name}"),
                  Text("${controller.age}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
