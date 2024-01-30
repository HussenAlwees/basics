import 'package:flutter/material.dart';
import 'package:new_test_project/aboutus.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page : "),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ),
        body: ListView(children: [
          Center(
            child: Text(
              "this is home page",
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
                    .push(MaterialPageRoute(builder: (context) => AboutUs()));
              },
              child: Text("click to go to about us page"),
            ),
          )
        ]));
  }
}
