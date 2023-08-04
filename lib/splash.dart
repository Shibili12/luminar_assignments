import 'dart:async';

import 'package:flutter/material.dart';
import 'package:luminar_assignments/welcomescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Welcomescreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/friut.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Image.asset(
                "assets/images/logofruit.png",
                height: 200,
                width: 200,
              ),
              Text(
                "Fresh foods",
                style: TextStyle(
                    color: Colors.white, fontSize: 45, fontFamily: "logohead"),
              ),
              Text(
                "Tasty & healthy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "hoolie",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
