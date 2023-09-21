import 'package:flutter/material.dart';
import 'package:luminar_assignments/touristappui/touristdummylist.dart';

class Touristdetails extends StatefulWidget {
  const Touristdetails({super.key});

  @override
  State<Touristdetails> createState() => _TouristdetailsState();
}

class _TouristdetailsState extends State<Touristdetails> {
  @override
  Widget build(BuildContext context) {
    final touristid = ModalRoute.of(context)?.settings.arguments;
    final listfromtourist = touristlist.firstWhere(
      (element) => element['id'] == touristid,
    );
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          listfromtourist['subtitle'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(listfromtourist['rating']),
                            Text("Ratings"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(listfromtourist['image1'])),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "About Place",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(listfromtourist['about']),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Special Facilities",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 50,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Wrap(
                  children: [
                    Icon(
                      Icons.local_parking_outlined,
                      color: Colors.blue,
                    ),
                    Text(
                      "Parking",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    Icon(
                      Icons.support_agent,
                      color: Colors.blue,
                    ),
                    Text(
                      "24x7 Support",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    Icon(
                      Icons.wifi,
                      color: Colors.blue,
                    ),
                    Text(
                      "Free WiFi",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(listfromtourist['image2']),
                ),
              ),
            ),
          ),
          const Text(
            "Special Facilities",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlue[100],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlue[100],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlue[100],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlue[100],
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Explore now"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
