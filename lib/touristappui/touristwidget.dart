import 'package:flutter/material.dart';

class Touristwidget extends StatelessWidget {
  String image;
  String name;
  String rating;
  VoidCallback onclick;
  Touristwidget({
    required this.image,
    required this.name,
    required this.onclick,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        height: 200,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      rating,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 15,
              bottom: 15,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
