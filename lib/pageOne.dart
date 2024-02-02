import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  void initState() {
    print("page one initialized");
    super.initState();
  }

  @override
  void dispose() {
    print("page one Disposed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page1 : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: Container(
        child: ListView(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("homepage");
              },
              child: Text("Go To Home page"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("page2");
              },
              child: Text("Go To page Two"),
            ),
          ],
        ),
      ),
    );
  }
}
