import 'package:flutter/material.dart';

class Tabsection extends StatelessWidget {
  const Tabsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Tabs(name: "VEGITABLES"),
          Tabs(name: "FRUITS"),
          Tabs(name: "EXOTIC"),
          Tabs(name: "FRESH CUTS"),
          Tabs(name: "FRESH FISH")
        ],
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  String name;
  Tabs({
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.green[900],
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
