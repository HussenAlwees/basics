import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      print("${scrollController.offset}");
    });

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        controller: scrollController,
        children: [
          MaterialButton(
            color: const Color.fromARGB(255, 212, 88, 129),
            onPressed: () {
              // scrollController.jumpTo(2956);
              scrollController.animateTo(2956,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            child: Text("click to jump to Bottom"),
          ),
          ...List.generate(
              100,
              (index) => Container(
                    alignment: Alignment.center,
                    child: Text(
                      "$index",
                      style: TextStyle(fontSize: 25),
                    ),
                    color: index.isEven
                        ? const Color.fromARGB(255, 121, 175, 220)
                        : const Color.fromARGB(255, 123, 209, 126),
                  )),
          MaterialButton(
            color: Color.fromARGB(255, 208, 231, 116),
            onPressed: () {
              // scrollController.jumpTo(0);
              scrollController.animateTo(0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            child: Text("click to jump to Top"),
          ),
        ],
      ),
    );
  }
}
