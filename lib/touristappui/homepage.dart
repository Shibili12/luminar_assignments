import 'package:flutter/material.dart';

class HomepageTourist extends StatelessWidget {
  HomepageTourist({super.key});

  var images = [
    "https://images.unsplash.com/photo-1677759878468-9d84883f6b04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2487&q=80",
    "https://images.unsplash.com/photo-1653149108712-f174c6f3c631?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2274&q=80",
    "https://images.unsplash.com/photo-1647509732969-acedaed1a27a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2485&q=80",
    "https://images.unsplash.com/photo-1676983463766-db0e54be9da3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2426&q=80",
  ];
  var places = [
    "Furious Place",
    "Luxury Place",
    "favorite place",
    "Nature Look",
  ];

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
            child: GridView.builder(
              itemCount: 4,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: ((context, index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                        height: 200,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(images[index]))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      "00$index",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              bottom: 15,
                              child: Text(
                                places[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )),
                  )),
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
}
