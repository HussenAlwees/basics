import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  List<Map> categories = [
    {'title': 'Laptops', 'iconName': Icons.laptop},
    {'title': 'Mobiles', 'iconName': Icons.mobile_friendly},
    {'title': 'Electric bikes', 'iconName': Icons.electric_bike},
    {'title': 'Cameras', 'iconName': Icons.camera_alt_outlined},
    {'title': 'Cars', 'iconName': Icons.electric_car},
  ];

  List<Map> items = [
    {
      'image': "images/1.png",
      'title': "car1",
      'subtitle': "description : faster car",
      'price': "500\$"
    },
    {
      'image': "images/2.png",
      'title': "car2",
      'subtitle': "description : big car",
      'price': "550\$"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                ),
              ],
            ),
            Container(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 20,
            ),

            //****************** for categories ************************//
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            categories[i]['iconName'],
                            size: 40,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          categories[i]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        )
                      ],
                    );
                  }),
            ),
            /////////////////////////
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Best Selling",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //****************** for Best Selling ************************//
            GridView.builder(
              itemCount: items.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 230),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Container(
                        width: 250,
                        padding: EdgeInsets.all(20),
                        color: Colors.grey[200],
                        child: Image.asset(
                          items[index]['image'],
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        items[index]['title'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        items[index]['subtitle'],
                        style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                      ),
                      Text(
                        items[index]['price'],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
