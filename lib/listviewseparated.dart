import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listviewseparated(),
  ));
}

class Listviewseparated extends StatelessWidget {
  Listviewseparated({super.key});
  var months = [
    "january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Months"),
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) {
          return Card(
            child: Container(
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  months[index],
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        }),
        separatorBuilder: (context, index) {
          if (index % 4 == 0) {
            return Container(
              height: 30,
              color: Colors.red,
              child: Center(
                child: Text(
                  "advertisement",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
        itemCount: 12,
      ),
    );
  }
}
