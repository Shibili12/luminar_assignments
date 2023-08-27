import 'package:flutter/material.dart';
import 'package:luminar_assignments/whatsappui/callscree.dart';
import 'package:luminar_assignments/whatsappui/community.dart';
import 'package:luminar_assignments/whatsappui/settings.dart';
import 'package:luminar_assignments/whatsappui/status.dart';
import 'package:luminar_assignments/whatsappui/whatsappui.dart';

void main() {
  runApp(MaterialApp(
    home: Whatsappbottom(),
  ));
}

class Whatsappbottom extends StatefulWidget {
  const Whatsappbottom({super.key});

  @override
  State<Whatsappbottom> createState() => _WhatsappbottomState();
}

class _WhatsappbottomState extends State<Whatsappbottom> {
  int index = 0;

  var screens = [
    Statusscreen(),
    Callscreen(),
    CommunityScreen(),
    Whatsappui(),
    Settingscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white12,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        currentIndex: index,
        onTap: (tappedindex) {
          setState(() {
            index = tappedindex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.change_circle_outlined), label: "Status"),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined), label: "Call"),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups_2_outlined), label: "Communities"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_sharp), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: screens[index],
    );
  }
}
