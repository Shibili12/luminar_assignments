import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Drawerexample(),
  ));
}

class Drawerexample extends StatelessWidget {
  const Drawerexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.orange.shade300,
                Colors.red,
              ])),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(children: [
              SizedBox(
                height: 60,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1531831108325-7fe9616bc780?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z2VudGxlbWFufGVufDB8fDB8fHww&auto=format&fit=crop&w=700&q=60"),
                ),
                title: Text(
                  "Sundar Pichai",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "CEO of Alphabet Inc",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
                title: Text(
                  "Dashbord",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.leaderboard_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "Leads",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
                title: Text(
                  "Clients",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.rocket_launch,
                  color: Colors.white,
                ),
                title: Text(
                  "Project",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.subscriptions,
                  color: Colors.white,
                ),
                title: Text(
                  "Subscription",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.white,
                ),
                title: Text(
                  "Payment",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.library_add,
                  color: Colors.white,
                ),
                title: Text(
                  "Library",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(20, 40)),
                onPressed: () {},
                child: Text("Logout"),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
