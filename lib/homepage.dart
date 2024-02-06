import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_test_project/screenTwo.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                Get.to(() => ScreenTwo());
              },
              child: Text("Click to go to page two : "),
            ),
          ],
        ),
      ),
    );
  }
}
