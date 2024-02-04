import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  bool loading = false;
  List data = [];

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
                  loading = true;

                  setState(() {});

                  var response = await get(
                      Uri.parse("https://jsonplaceholder.typicode.com/posts"));

                  var resonsebody = jsonDecode(response.body);

                  data.addAll(resonsebody);

                  loading = false;
                  setState(() {});
                }),
          ),
          if (loading)
            Center(
              child: CircularProgressIndicator(),
            ),
          ...List.generate(
              data.length,
              (index) => Card(
                    child: ListTile(
                      title: Text("title : ${data[index]['title']}"),
                      subtitle: Text("body : ${data[index]['body']}"),
                    ),
                  ))
        ],
      ),
    );
  }
}
