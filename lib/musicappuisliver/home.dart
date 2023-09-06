import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homemusic extends StatelessWidget {
  var images = [
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSsyDDwWvJfH2sJaSLAi9ql7gO_fCH6QpvEpzg6G5iRLP5AUno_",
    "https://upload.wikimedia.org/wikipedia/en/3/38/Sam_Smith_and_Kim_Petras_-_Unholy.png",
    "https://upload.wikimedia.org/wikipedia/en/4/43/Rihanna_-_Lift_Me_Up.png",
    "https://i0.wp.com/xclusivesongs.com/wp-content/uploads/2022/10/Dax-Depression-artwork.webp?fit=320%2C350&ssl=1",
    "https://upload.wikimedia.org/wikipedia/en/8/87/David_Guetta_and_Bebe_Rexha_-_I%27m_Good_%28Blue%29.png",
    "https://upload.wikimedia.org/wikipedia/en/1/18/Elley_Duh%C3%A9_-_Middle_of_the_Night.png",
    "https://upload.wikimedia.org/wikipedia/en/f/fa/Billie_Eilish_and_Khalid_-_Lovely.png",
  ];
  var titles = [
    "Hero",
    "Unholy",
    "Lift me up",
    "depression",
    "I'mgood",
    "Middle of the night",
    "Lovely",
  ];

  var singer = [
    "Tylor swift",
    "San smith,Kim petras",
    "Rihanna",
    "Dax",
    "David Guetta",
    "Elley Duhé",
    "Billie eilish",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Musify.",
          style: GoogleFonts.nunito(
              color: Colors.pink[300],
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Suggested playlist",
              style: GoogleFonts.nunito(
                  color: Colors.pink[300],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSVwBL_Gq6CYMhknGattDF_IQbEpHKyAOcQts2-aazCGyXej5Ft"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSMKA79p9Pc8HLW_7Em8t5M6D-_yasIb-E_cNDqvZagecBFvHIS"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recommended For You",
              style: GoogleFonts.nunito(
                  color: Colors.pink[300],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 600,
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[index]),
                      ),
                    ),
                  ),
                  title: Text(
                    titles[index],
                    style: GoogleFonts.nunito(
                        color: Colors.pink[300],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    singer[index],
                    style: GoogleFonts.nunito(
                        color: Colors.white60,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Wrap(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.pink,
                      ),
                      Icon(
                        Icons.download_outlined,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
