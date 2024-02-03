import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

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
        title: Text("Package : "),
        backgroundColor: const Color.fromARGB(255, 175, 206, 232),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text("press to chow the dialog"),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.info,
                    animType: AnimType.rightSlide,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                }),
          ),
        ],
      ),
    );
  }
}
