import 'package:flutter/material.dart';
import 'package:luminar_assignments/farmersfreshui/accountpage.dart';
import 'package:luminar_assignments/farmersfreshui/cartpage.dart';
import 'package:luminar_assignments/farmersfreshui/homepage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bottomnavfarmer(),
  ));
}

class Bottomnavfarmer extends StatefulWidget {
  const Bottomnavfarmer({super.key});

  @override
  State<Bottomnavfarmer> createState() => _BottomnavfarmerState();
}

class _BottomnavfarmerState extends State<Bottomnavfarmer> {
  int index = 0;
  var screens = [
    Homepage(),
    Cartpage(),
    Accountpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.green,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text("Cart"),
            selectedColor: Colors.green,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Account"),
            selectedColor: Colors.green,
          ),
        ],
      ),
      body: screens[index],
    );
  }
}
