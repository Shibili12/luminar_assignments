import 'package:flutter/material.dart';

class Hotelwidget extends StatelessWidget {
  String image;
  String price;
  String hotelname;
  String location;
  Hotelwidget({
    required this.hotelname,
    required this.image,
    required this.location,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image)),
            ),
            child: Stack(
              children: [
                Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
                Container(
                  height: 15,
                  width: 20,
                  child: Center(
                    child: Text(price),
                  ),
                ),
              ],
            ),
          ),
          Text(
            hotelname,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(location),
        ],
      ),
    );
  }
}
