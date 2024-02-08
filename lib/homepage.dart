import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
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
                  Get.defaultDialog(
                      title: "Dialog Title",
                      middleText: "This is a dialog",
                      textCancel: "Cancel",
                      textConfirm: "OK",
                      onConfirm: () {
                        print("Ok");
                      },
                      onCancel: () {
                        Get.back();
                      });
                },
                child: Text("Show first Dialog"),
              ),
            ),
            Container(
              height: 30,
            ),
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Get.defaultDialog(
                      title: "Dialog Title",
                      content: Column(
                        children: [
                          Text("Enter user name:"),
                          TextFormField(),
                        ],
                      ),
                      titleStyle: TextStyle(color: Colors.blue, fontSize: 16),
                      actions: [
                        MaterialButton(
                          onPressed: () {},
                          child: Text("ok"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("cancel"),
                        ),
                      ]);
                },
                child: Text("Show second Dialog"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
