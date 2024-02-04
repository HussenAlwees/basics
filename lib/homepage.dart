import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  Future<List> getData() async {
    var response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    List responsebody = json.decode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP API : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              }
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("${snapshot.data![index]["title"]}"),
                        subtitle: Text("${snapshot.data![index]["body"]}"),
                      );
                    });
              }
            }
            return const Center(child: Text("No Data"));
          }),
    );
  }
}
