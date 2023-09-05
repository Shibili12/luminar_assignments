import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luminar_assignments/farmersfreshui/carosalsection.dart';
import 'package:luminar_assignments/farmersfreshui/featuressection.dart';
import 'package:luminar_assignments/farmersfreshui/tabsection.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              backgroundColor: Colors.green,
              actions: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Kochi"),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ],
              title: Text(
                "FARMERSE FRESH STORE",
                style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              bottom: AppBar(
                elevation: 0,
                backgroundColor: Colors.green,
                title: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "search here",
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(Icons.search, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Tabsection(),
                  Carousalsection(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Features(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
