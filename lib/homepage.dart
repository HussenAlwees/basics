import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP API : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text(" HTTP request"),
                onPressed: () async {
                  var response = await get(
                      Uri.parse("https://jsonplaceholder.typicode.com/posts"));
                  print('llv');
                  var resonsebody = jsonDecode(response.body);
                  print(resonsebody[0]['userId']);
                }),
          ),
        ],
      ),
    );
  }
}
