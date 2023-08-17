import 'package:flutter/material.dart';

class Searchmusic extends StatelessWidget {
  const Searchmusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Search",
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
