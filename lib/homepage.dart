import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
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
                  Get.snackbar("title", "message",
                      backgroundColor: Colors.green, colorText: Colors.white);
                },
                child: Text("show Snackbar"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  print(Get.isSnackbarOpen);
                  print(GetPlatform.isAndroid);
                },
                child: Text("check"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
