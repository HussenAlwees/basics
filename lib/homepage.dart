import 'package:flutter/material.dart';

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
        title: const Text("theme : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "bodySmall theme",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "bodyLarge theme",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "bodyMedium theme",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
