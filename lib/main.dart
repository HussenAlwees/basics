// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WillPopScope Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: ElevatedButton(
            child: Text('Go to next page'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextPage()));
            },
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NextPage extends StatelessWidget {
  DateTime? _lastClicked;

  NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final now = DateTime.now();
        bool allowPop = false;
        if (_lastClicked == null || now.difference(_lastClicked!) > Duration(seconds: 1)) {
          _lastClicked = now;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Double click back button to exit'),
              duration: Duration(seconds: 1),
            ),
          );
        } else {
          allowPop = true;
        }
        return Future<bool>.value(allowPop);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("next page"),
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: ElevatedButton(
              child: Text('Go to previous'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
