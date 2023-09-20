import 'package:flutter/material.dart';
import 'package:luminar_assignments/touristappui/touristdetails.dart';
import 'package:luminar_assignments/touristappui/touristdummylist.dart';
import 'package:luminar_assignments/touristappui/touristwidget.dart';

class HomepageTourist extends StatelessWidget {
  HomepageTourist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(
              width: 85,
            ),
            Text(
              "Go",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Fast",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[50],
                hintText: "Serach",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Places",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("View All"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 400,
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: touristlist
                  .map((e) => Touristwidget(
                        image: e['image1'],
                        name: e['title'],
                        onclick: gotodetails(context, e['id']),
                        rating: e['rating'],
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blue[700]),
                onPressed: () {},
                child: Text("Explore Now"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  gotodetails(BuildContext context, touristid) {
    Navigator.pushNamed(context, 'details', arguments: touristid);
  }
}
