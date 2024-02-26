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
          body: widgetForProvider(),
        ),
      ),
    );
  }
}

class widgetForProvider extends StatelessWidget {
  const widgetForProvider({super.key});

  @override
  Widget build(BuildContext context) {
    var TNmodel = Provider.of<Model>(context, listen: false);

    return ListView(
      children: <Widget>[
        Center(
          child: Text("${TNmodel.text}"),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text("${TNmodel.number}"),
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("change the text"),
          onPressed: () {
            TNmodel.changetext();
          },
        ),
        MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("increase the number"),
          onPressed: () {
            TNmodel.increaseNum();
          },
        ),
      ],
    );
  }
}

class Model extends ChangeNotifier {
  var text = "Hello";
  var number = 0;

  changetext() {
    text = "Hello World";
    notifyListeners();
  }

  increaseNum() {
    number++;
    notifyListeners();
  }
}
