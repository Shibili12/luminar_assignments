import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  var icons = [
    Icons.privacy_tip,
    Icons.history,
    Icons.help_center_outlined,
    Icons.settings_outlined,
    Icons.person_add,
    Icons.logout
  ];
  var name = [
    "Privacy",
    "History",
    "Help center",
    "settings",
    "invite freind",
    "logout"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black45,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.black45,
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/dq.avif"),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.blue,
                  size: 40,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Chromicle",
              style: GoogleFonts.openSans(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("@amf005"),
            SizedBox(
              height: 25,
            ),
            Text(
              "Mobile app developer and open source enthuasist",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                itemBuilder: ((context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200],
                    ),
                    child: ListTile(
                      leading: Icon(icons[index]),
                      title: Text(name[index]),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  );
                }),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 25,
                  );
                },
                itemCount: 6,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
