import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
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
                  Get.snackbar(
                    "Title is snackbar",
                    "This is a message",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Color.fromARGB(255, 118, 228, 93),
                    colorText: Colors.white,
                    borderRadius: 20,
                    margin: EdgeInsets.all(15),
                    isDismissible: true,
                    duration: Duration(seconds: 3),
                    forwardAnimationCurve: Curves.easeOutBack,
                    boxShadows: [
                      BoxShadow(
                          color: Color.fromARGB(255, 61, 211, 206),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(3, 7))
                    ],
                  );
                },
                child: Text("Show Snackbar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
