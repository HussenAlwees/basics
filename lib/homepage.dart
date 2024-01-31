import 'package:flutter/material.dart';
import 'package:new_test_project/aboutus.dart';
import 'package:new_test_project/contactus.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
              child: Text("Show the dialog"),
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      titleTextStyle:
                          TextStyle(fontSize: 20, color: Colors.pink),
                      titlePadding: EdgeInsets.all(10),
                      title: Text("Warining"),
                      contentTextStyle:
                          TextStyle(fontSize: 20, color: Colors.black),
                      contentPadding: EdgeInsets.all(20),
                      content: Text("Are youe sure? "),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("cancel"),
                        ),
                        TextButton(
                            onPressed: () {
                              print("OK OK OK");
                            },
                            child: Text("Ok"))
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
