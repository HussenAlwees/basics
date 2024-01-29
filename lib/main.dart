import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextFormField && Form && onSaved :"),
          backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        ), //AppBar
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "userName: "),
                  onSaved: (val) {
                    name = val!;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "الحقل فارغ";
                    }
                    if (val.length > 10)
                      return "لا يمكن أن تكون عدد الأحرف اكبر من 10";
                  },
                ), //TextFild
                MaterialButton(
                  child: Text("valid"),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      print("$name");
                    } else
                      print("not valid");
                  },
                ),
              ],
            ), //Column
          ), //Form
        ), //container
      ), //Scaffold
    ); //MaterialApp
  }
}
