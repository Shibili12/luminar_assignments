import 'package:flutter/material.dart';
import 'package:luminar_assignments/hotelui/hotelwidget.dart';

void main() {
  runApp(MaterialApp(
    home: Hotelhome(),
  ));
}

class Hotelhome extends StatelessWidget {
  const Hotelhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.purple,
            leading: Icon(Icons.menu),
            centerTitle: true,
            title: Text("Type your location"),
            actions: [Icon(Icons.favorite_border)],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.purple,
              centerTitle: true,
              flexibleSpace: Center(
                child: Container(
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
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                GridView.builder(
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) => Hotelwidget(
                      hotelname: "hotelname",
                      image: "image",
                      location: "location",
                      price: "price"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
