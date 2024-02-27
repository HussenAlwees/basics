import 'package:flutter/material.dart';
import 'package:new_test_project/checkout.dart';
import 'package:new_test_project/model/cart.dart';
import 'package:new_test_project/model/item.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [
    Item(name: "s20 Ultra", price: 250),
    Item(name: "A50 ", price: 350),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        backgroundColor: Colors.blue,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => checkOut(),
                    ),
                  );
                },
                icon: Icon(Icons.add_shopping_cart),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Consumer<Cart>(
                  builder: (context, cart, child) {
                    return Text("${cart.count}");
                  },
                ),
              ),
            ],
          ) //Row
        ],
      ), //AppBar
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: Consumer<Cart>(
                builder: (context, cart, child) {
                  return ListTile(
                    title: Text("${items[index].name}"),
                    trailing: IconButton(
                      onPressed: () {
                        cart.add(items[index]);
                        print(index);
                      },
                      icon: Icon(Icons.add),
                    ),
                  ); //ListTile
                },
              ), //consumer
            ); //Card
          }), //ListView
    ); //Scaffold
  }
}
