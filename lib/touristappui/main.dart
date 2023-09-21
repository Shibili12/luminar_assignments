import 'package:flutter/material.dart';
import 'package:luminar_assignments/touristappui/homepage.dart';
import 'package:luminar_assignments/touristappui/touristdetails.dart';
import 'package:luminar_assignments/touristappui/welcome_page.dart';

void main() {
  runApp(Touristui());
}

class Touristui extends StatelessWidget {
  const Touristui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcomepage(),
      routes: {
        'Homepage': (context) => HomepageTourist(),
        'Details': (context) => Touristdetails(),
      },
    );
  }
}
