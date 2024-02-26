// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const TestOne());
}

class TestOne extends StatefulWidget {
  const TestOne({super.key});

  @override
  State<TestOne> createState() => _TestOneState();
}

class _TestOneState extends State<TestOne> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Provider'),
            backgroundColor: const Color.fromARGB(255, 175, 206, 232),
          ),
          body: ListView(
            children: [
              Consumer<Model>(builder: (context, value, child) {
                return Center(
                  child: Text("${value.text}"),
                );
              }),
              SizedBox(
                height: 20,
              ),
              Consumer<Model>(builder: (context, value, child) {
                return MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("change the text"),
                  onPressed: () {
                    value.changetext();
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String text = "Hello";
  changetext() {
    text = "Hello World";
    notifyListeners();
  }
}
