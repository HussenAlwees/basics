import 'package:flutter/material.dart';

// ignore: must_be_immutable
class super_page extends StatelessWidget {
  super_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("super page : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Super Page :")),
          ],
        ),
      ),
    );
  }
}
