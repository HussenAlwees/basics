import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
              child: Text("open the Image"),
              onPressed: () {
                scaffoldKey.currentState!.showBottomSheet((context) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    height: 200,
                    width: 400,
                    color: Color.fromARGB(255, 76, 90, 196),
                    child: Column(
                      children: [
                        Text(
                          "choose :",
                          style: TextStyle(fontSize: 30, color: Colors.red),
                        ),
                        Container(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            print("pressed");
                          },
                          child: Text(
                            "From Gallery ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Text(
                          "From Camera ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
