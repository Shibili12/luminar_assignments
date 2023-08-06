import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fruitslist(),
  ));
}

class Fruitslist extends StatelessWidget {
  Fruitslist({super.key});

  var image = [
    "assets/images/apple.png",
    "assets/images/orange.png",
    "assets/images/mango.png",
    "assets/images/banana.png",
    "assets/images/blackgrapes.png",
    "assets/images/greengrapes.png",
    "assets/images/pineapple.png",
    "assets/images/strawberry.png",
    "assets/images/pomegranate.png",
  ];
  var name = [
    "Apple",
    "Orange",
    "Mango",
    "Banana",
    "Grapes",
    "Grapes",
    "Pineapple",
    "Strawberry",
    "Pomegranate",
  ];
  var unit = ["Kg", "Kg", "Doz", "Doz", "Kg", "Kg", "Doz", "Kg", "Kg"];
  var price = ["20", "30", "10", "15", "13", "16", "25", "35", "32"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Product list",
          ),
        ),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: 9,
            itemBuilder: ((context, index) {
              return Container(
                height: 100,
                child: Card(
                  color: Colors.blueGrey[300],
                  child: ListTile(
                    leading: Image.asset(
                      image[index],
                      height: 85,
                      width: 85,
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Wrap(
                            children: [
                              Text("Name:"),
                              Text(
                                name[index],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Wrap(
                            children: [
                              Text("Unit:"),
                              Text(
                                unit[index],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Wrap(
                            children: [
                              Text("Price:"),
                              Text(
                                price[index],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text("Add To Cart"),
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
