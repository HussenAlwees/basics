import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_test_project/main.dart';

// ignore: must_be_immutable
class Admin extends StatelessWidget {
  Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin page : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  sharedPref!.clear();
                  Get.offAllNamed("/");
                },
                child: Text("sign out : "),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
