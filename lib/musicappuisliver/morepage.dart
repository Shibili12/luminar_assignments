import 'package:flutter/material.dart';

class Morepage extends StatelessWidget {
  const Morepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "more",
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
