import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_test_project/settingsservices.dart';

// ignore: must_be_immutable
class Home extends GetView<SettingsServices> {
  Home({super.key});

  get sharedPref => null;

  @override
  Widget build(BuildContext context) {
    // SettingsServices c=Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("main page : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingsServices>(
              builder: (c) => Center(
                child: Text("${c.counter}"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  controller.increase();
                },
                child: Text("Counter increase : "),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  controller.shardprefs.clear();
                },
                child: Text("clear shared preference : "),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
