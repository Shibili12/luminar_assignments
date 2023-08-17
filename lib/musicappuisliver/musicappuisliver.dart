import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Musichome extends StatelessWidget {
  var image = [
    "https://t2.gstatic.com/images?q=tbn:ANd9GcSnZ1_QXPJEB6WUWuW792bgpkDEslzK-NpMGACok5MRUF3IjFSM",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQJQ7leSNIMiueq9vGdZaLayEeNpv_7kER7CbTiQrXuDbSm6XJz",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTqE5bCBhym5H6pR1SVa48_4YWO43Ve3QwWfpLgM2kPxNd9-hoD",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcROqRLMO4b5oJ7gk-I9vjdVt5IEhqLPCvG4sxZyTek3BmVk5kIU",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR5frK3thUzCfPyYqAkNo6lG-mb57C5rWAQJksC09ZBJ6WsoblG",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTinaUBuM9yEf8twceKSCZINotTFxdRGmMh4TzgL_-wzRiuOQD0",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxmueufGWJQVd9d7flASxiwj3TCgyNerzhZ2O6X-m0tmWlzHLk",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRUgePfm_fIOTZa8GppCLHkFaa-cBEsPWyiDVH2dsuZL1LX30Fp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                "Playlist",
                style: GoogleFonts.nunito(
                    color: Colors.pink[300],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              bottom: AppBar(
                elevation: 0,
                backgroundColor: Colors.black,
                title: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      color: Color.fromARGB(32, 158, 158, 158),
                      borderRadius: BorderRadius.circular(30)),
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "search here",
                      hintStyle: TextStyle(color: Colors.pink[300]),
                      suffixIcon: Icon(Icons.search, color: Colors.pink[300]),
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(image[index])),
                      // color: Colors.indigo,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
