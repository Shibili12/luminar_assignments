import 'package:flutter/material.dart';

class Homemusic extends StatelessWidget {
  const Homemusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(
            color: Colors.pink,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
