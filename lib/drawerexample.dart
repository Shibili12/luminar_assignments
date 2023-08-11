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
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orange.shade400,
        title: Text("Sundar Pichai",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
      ),
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
      body: Column(
        children: [
          Image.network(
              "https://indiacsr.in/wp-content/uploads/2023/02/Sundar-Pichai.jpg"),
          Expanded(
              child: SingleChildScrollView(
            child: Text(
                """Pichai Sundararajan (born June 10, 1972[3][4][5]), better known as Sundar Pichai (/ˈsʊndɑːr pɪˈtʃaɪ/), is an American business executive.[6] He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google.[7]
          
          Pichai began his career as a materials engineer. Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004,[8] where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM. The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products that he oversaw.
          
          Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.[9]
          
          Pichai was included in Time's annual list of the 100 most influential people in 2016[10] and 2020.[11]
          Pichai worked in engineering and product management at Applied Materials and in management consulting at McKinsey & Company.[24] Pichai joined Google in 2004, where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome[25] and ChromeOS, as well as being largely responsible for Google Drive. He went on to oversee the development of other applications such as Gmail and Google Maps.[26][27] On November 19, 2009, Pichai gave a demonstration of ChromeOS; the Chromebook was released for trial and testing in 2011, and released to the public in 2012.[28] On May 20, 2010, he announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM.[29]

On March 13, 2013, Pichai added Android to the list of Google products that he oversaw. Android was formerly managed by Andy Rubin.[30] He was a director of Jive Software from April 2011 to July 30, 2013.[31][32][33] Pichai was selected to become the next CEO of Google on August 10, 2015[34] after previously being appointed Product Chief by CEO, Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family.[35][33][36]

Pichai had been suggested as a contender for Microsoft's CEO in 2014, a position that was eventually given to Satya Nadella.[37][38] In August 2017, Pichai drew publicity for firing a Google employee who wrote a ten-page manifesto criticizing the company's diversity policies.[39][40][41][42][43]

In December 2017, Pichai was a speaker at the World Internet Conference in China, where he stated that "a lot of work Google does is to help Chinese companies. There are many small and medium-sized businesses in China who take advantage of Google to get their products to many other countries outside of China."[44][45]

In December 2019, Pichai became the CEO of Alphabet Inc.[46][47] His compensation from the company topped 200 million in 2022"""),
          ))
        ],
      ),
    );
  }
}
