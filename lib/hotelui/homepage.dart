import 'package:flutter/material.dart';
import 'package:luminar_assignments/hotelui/dummylist.dart';
import 'package:luminar_assignments/hotelui/hoteldetails.dart';
import 'package:luminar_assignments/hotelui/hotelwidget.dart';

void main() {
  runApp(MaterialApp(
    home: Hotelhome(),
    routes: {
      'details': (context) => Hoteldetails(),
    },
  ));
}

class Hotelhome extends StatelessWidget {
  Hotelhome();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple,
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            )
          ],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Type Your Location",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Kochi,kerala",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.pink,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hotel,
                        color: Colors.white,
                      ),
                      Text(
                        "Hotel",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        color: Colors.white,
                      ),
                      Text(
                        "Restaurant",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_cafe,
                        color: Colors.white,
                      ),
                      Text(
                        "Cafe",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1000,
              child: ListView(
                children: hotellist
                    .map(
                      (hotelonebyone) => Hotelwidget(
                          onClicked: gotodetails(context, hotelonebyone['id']),
                          hotelname: hotelonebyone['name'],
                          image: "${hotelonebyone['room']}",
                          location: hotelonebyone['location'],
                          price: hotelonebyone['price']),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  gotodetails(BuildContext context, hotelid) {
    Navigator.pushNamed(context, 'details', arguments: hotelid);
  }
}
