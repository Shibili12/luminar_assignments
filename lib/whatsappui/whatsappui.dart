import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsappui(),
  ));
}

class Whatsappui extends StatelessWidget {
  var name = [
    "shibili",
    "sahad",
    "swalih",
    "aslam",
    "navaneeth",
    "munees",
    "shibly",
    "shuhaib",
    "asif ali",
    "dq",
  ];
  var image = [
    "assets/images/shibilimain.jpeg",
    "assets/images/sahad.JPG",
    "assets/images/swalih.jpeg",
    "assets/images/aslam.jpeg",
    "assets/images/aliyan.jpeg",
    "assets/images/munees.jpeg",
    "assets/images/shibili.JPG",
    "assets/images/shuhaib.jpeg",
    "assets/images/asifali.jpeg",
    "assets/images/dq.avif",
  ];
  var message = [
    "hello",
    "where are you",
    "hyy ",
    "hyy mahn..",
    "hlo ..",
    "heyy bruh",
    "hihihi",
    "good morning",
    "hi shibili..... ",
    "hai how are you",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text("Whatsapp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: ((context) {
            return [
              PopupMenuItem(child: Text("New chat")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("Settings")),
              // PopupMenuItem(child: Text("data")),
              // PopupMenuItem(child: Text("data")),
            ];
          }))
        ],
      ),
      body: ListView(
        children: List.generate(
          10,
          (index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(
                name[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(message[index]),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "$index:00",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Container(
                  //   height: 20,
                  //   width: 20,
                  //   decoration: BoxDecoration(
                  //     color: Colors.green[400],
                  //     shape: BoxShape.circle,
                  //   ),
                  //   child: Text("$index"),
                  // )
                  Icon(
                    Icons.circle,
                    color: Colors.green[400],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
