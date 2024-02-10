import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_test_project/main.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("change the Theme"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {},
                child: Text(""),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeTheme(theme.lightTheme);
                  } else {
                    Get.changeTheme(theme.darkTheme);
                  }
                },
                child: Text("change theme"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
