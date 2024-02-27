import 'package:flutter/material.dart';
import 'package:new_test_project/model/model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
          backgroundColor: Colors.blue,
        ), //AppBar
        body: Container(
          child: Column(
            children: [
              Consumer<MyModel>(
                builder: (context, value, child) {
                  return Container(
                    child: Text(value.name),
                  );
                },
              ),
              Consumer<MyModel>(
                builder: (context, value, child) {
                  return MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      value.changeName("Hussen");
                    },
                    child: Text("Model  ChangeNotifierProvider"),
                  );
                },
              ),
              Consumer<AnotherModel>(
                builder: (context, value, child) {
                  return MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      value.changeNameAnotherModel();
                    },
                    child: Text("Model ProxyProvider"),
                  );
                },
              ),
            ],
          ),
        )); //Scaffold
  }
}
