import 'package:flutter/material.dart';
import 'package:luminar_assignments/musicappuisliver/home.dart';
import 'package:luminar_assignments/musicappuisliver/morepage.dart';
import 'package:luminar_assignments/musicappuisliver/musicappuisliver.dart';
import 'package:luminar_assignments/musicappuisliver/searchmusic.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bottomnavsliver(),
  ));
}

class Bottomnavsliver extends StatefulWidget {
  const Bottomnavsliver({super.key});

  @override
  State<Bottomnavsliver> createState() => _BottomnavsliverState();
}

class _BottomnavsliverState extends State<Bottomnavsliver> {
  int index = 0;
  var screens = [
    Homemusic(),
    Searchmusic(),
    Musichome(),
    Morepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.pink,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.playlist_play_outlined),
            title: Text("Playlist"),
            selectedColor: Colors.pink,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text("More"),
            selectedColor: Colors.pink,
          ),
        ],
      ),
      body: screens[index],
    );
  }
}
