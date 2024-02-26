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
            children: <Widget>[
              Selector<Model, String>(
                  selector: (context, t_val) => t_val.showText,
                  builder: (context, value, child) {
                    return Center(
                      child: Text(value),
                    );
                  }),
              SizedBox(
                height: 20,
              ),
              Selector<Model, int>(
                  selector: (context, N_val) => N_val.showNumber,
                  builder: (context, value, child) {
                    return Center(
                      child: Text(value.toString()),
                    );
                  }),
              SizedBox(
                height: 20,
              ),
              Consumer<Model>(builder: (context, value, child) {
                print("consumer1");
                return MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("change the text"),
                  onPressed: () {
                    value.changetext();
                  },
                );
              }),
              Consumer<Model>(builder: (context, value, child) {
                print("consumer2");
                return MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("increase the number"),
                  onPressed: () {
                    value.increaseNum();
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
  var text = "Hello";
  var number = 0;

  get showText => text;
  get showNumber => number;

  changetext() {
    text = "Hello World";
    notifyListeners();
  }

  increaseNum() {
    number++;
    notifyListeners();
  }
}
