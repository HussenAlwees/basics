import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  void initState() {
    print("page Two initialized");
    super.initState();
  }

  @override
  void dispose() {
    print("page Two Disposed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page2 : "),
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
                Navigator.of(context).pushNamed("page1");
              },
              child: Text("Go To page One"),
            ),
          ],
        ),
      ),
    );
  }
}
