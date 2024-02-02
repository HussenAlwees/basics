import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  const ItemsDetails({super.key, this.data});
  // ignore: prefer_typing_uninitialized_variables
  final data;
  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.table_chart_outlined,
              color: Colors.black,
            ),
            Text(
              " Ecommerce",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "  BA tech",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.grey[800]),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
              height: 450,
              width: 300,
              child: Image.asset(widget.data['image'], fit: BoxFit.fill)),
          Container(
            child: Text(
              widget.data['title'],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.data['subtitle'],
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.data['price'],
              style: TextStyle(
                color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
              ),
              Text(
                "Color : ",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange, width: 2),
                ),
              ),
              Text(" Grey"),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text(" Black"),
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              child: MaterialButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    content: Text(
                      "The addition has been completed",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    duration: Duration(seconds: 1),
                    backgroundColor: const Color.fromARGB(255, 212, 208, 208),
                  ));
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 20),
                ),
              )),
        ],
      ),
    );
  }
}
