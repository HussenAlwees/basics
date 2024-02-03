import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("showSearch : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearch(),
                );
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> search_iteam = [
    "Hussen",
    "Ali",
    "Hasan",
    "Mossa",
    "Masen",
    "Yasser",
  ];

  List? filterList;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Row(children: [
      Icon(Icons.arrow_forward),
      Text(
        "You search for : $query",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ]);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return ListView.builder(
        itemCount: search_iteam.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${search_iteam[i]}",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      );
    } else {
      filterList = search_iteam
          .where(
              (element) => element.toLowerCase().contains(query.toLowerCase()))
          .toList();
      return ListView.builder(
        itemCount: filterList!.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${filterList![i]}",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      );
    }
  }
}
