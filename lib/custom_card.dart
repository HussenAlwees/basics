import 'package:flutter/material.dart';

class Custom_List_Tile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imagename;
  const Custom_List_Tile({
    super.key,
    required this.name,
    required this.email,
    required this.date,
    required this.imagename,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  "images/$imagename",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("$name"),
                subtitle: Text("$email"),
                trailing: Text("$date"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
