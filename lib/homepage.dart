import 'package:get/get.dart';
import 'package:flutter/material.dart';

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
                  Get.bottomSheet(
                    Container(
                      height: 200,
                      width: 300,
                      alignment: Alignment.center,
                      child: Text("the text is from container"),
                    ),
                    backgroundColor: Color.fromARGB(255, 92, 174, 209),
                    enterBottomSheetDuration: Duration(seconds: 2),
                    exitBottomSheetDuration: Duration(seconds: 2),
                    isDismissible: false,
                  );
                },
                child: Text("Show BottomSheet"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
