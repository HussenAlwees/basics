import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_test_project/main.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In page : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Color.fromARGB(255, 40, 213, 222),
                onPressed: () {
                  sharedPref!.setString("id", "1");
                  Get.offNamed("home");
                },
                child: Text("Log in : "),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
