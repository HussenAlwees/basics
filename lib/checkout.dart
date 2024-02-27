import 'package:flutter/material.dart';
import 'package:new_test_project/model/cart.dart';
import 'package:provider/provider.dart';

class checkOut extends StatefulWidget {
  const checkOut({super.key});

  @override
  State<checkOut> createState() => _checkOutState();
}

class _checkOutState extends State<checkOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkOut"),
        backgroundColor: Colors.blue,
      ), //AppBar
      body: Consumer<Cart>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.basketitem.length,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                  title: Text("${cart.basketitem[index].name}"),
                  trailing: IconButton(
                    onPressed: () {
                      cart.remove(cart.basketitem[index]);
                    },
                    icon: Icon(Icons.remove),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
