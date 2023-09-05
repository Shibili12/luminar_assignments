import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  var image = [
    "assets/images/vegitables.jpg",
    "assets/images/fruits.jpg",
    "assets/images/exotic.jpg",
    "assets/images/freshcuts.jpg",
    "assets/images/nutrition.jpg",
    "assets/images/powders.jpg",
  ];
  var names = [
    "Vegitebles",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Charges",
    "Packed Flavour",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: GridView.builder(
        itemCount: 6,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Card(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image[index]))),
              ),
              SizedBox(height: 11),
              Text(
                names[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
