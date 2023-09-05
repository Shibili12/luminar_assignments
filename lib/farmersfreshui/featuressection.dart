import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: .2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Columnitems(
            icon: Icons.policy,
            name: "30 MIN POLICY",
          ),
          Columnitems(
            icon: Icons.track_changes,
            name: "TRACEBLITY",
          ),
          Columnitems(
            icon: Icons.source,
            name: "LOCAL SOURCING",
          ),
        ],
      ),
    );
  }
}

class Columnitems extends StatelessWidget {
  IconData icon;
  String name;
  Columnitems({
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.green,
        ),
        Text(name),
      ],
    );
  }
}
