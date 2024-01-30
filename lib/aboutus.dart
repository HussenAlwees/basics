import 'package:flutter/material.dart';
import 'package:new_test_project/homepage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Apout Us page : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ),
        body: ListView(children: [
          Center(
            child: Text(
              "this is about us page",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Homepage()));
              },
              child: Text("click to go to home page"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("back using pop"),
            ),
          )
        ]));
  }
}
