import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              child: const Text("get the Image"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Image is loading"),
                    duration: Duration(seconds: 10),
                    backgroundColor: Colors.green,
                    action: SnackBarAction(
                        label: "OK",
                        onPressed: () {
                          print("pressed");
                        }),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
