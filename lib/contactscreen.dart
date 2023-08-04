import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Contactlist(),
  ));
}

class Contactlist extends StatelessWidget {
  const Contactlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Contacts",
          style: GoogleFonts.openSans(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/shibili.JPG"),
              ),
              title: Text("shibili"),
              subtitle: Text("8848555711"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/sahad.JPG"),
              ),
              title: Text("sahad"),
              subtitle: Text("9876543210"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/aslam.jpeg"),
              ),
              title: Text("Aslam"),
              subtitle: Text("9988776655"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/aliyan.jpeg"),
              ),
              title: Text("Navaneeth"),
              subtitle: Text("9876567890"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/munees.jpeg"),
              ),
              title: Text("Munees"),
              subtitle: Text("975314579"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/swalih.jpeg"),
              ),
              title: Text("swalih"),
              subtitle: Text("9879879870"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/shuhaib.jpeg"),
              ),
              title: Text("Shuhaib"),
              subtitle: Text("9988774444"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/shibilimain.jpeg"),
              ),
              title: Text("shibili 2"),
              subtitle: Text("8989898900"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dq.avif"),
              ),
              title: Text("Dq"),
              subtitle: Text("975314369"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/neymar.jpeg"),
              ),
              title: Text("Neymar"),
              subtitle: Text("853463785"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/asifali.jpeg"),
              ),
              title: Text("Asif ali"),
              subtitle: Text("8888865656"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/shibilimain.jpeg"),
              ),
              title: Text("shibili 2"),
              subtitle: Text("8989898900"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
