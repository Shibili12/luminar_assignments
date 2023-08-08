import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridcustom(),
  ));
}

class Gridcustom extends StatelessWidget {
  var images = [
    "https://rukminim2.flixcart.com/image/832/832/kuipea80/bag/q/l/x/by-hotshot-platinum-series-limited-edition-blue-bag-for-girls-original-imag7meusukqusg4.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/khglj0w0-0/sunglass/x/l/n/48-black-clear-liza-angel-original-imafxh8wegyvnub4.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/belt/f/m/b/42-men-s-italian-leather-reversible-belt-sh-nickel-lsbe-ff-sh-original-imaggd2kh5qrcemy.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/necklace-chain/j/d/q/-original-imagqgcvvag5bnhv.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/earring/g/t/u/na-er01725-giva-original-imagh3zqfqkmpknw.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/sock/l/g/s/free-5-swg-365-51-swagr-original-imaggmtcyd4gcbqv.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/cap/h/y/t/free-gn8404-reebok-original-imagn5739rbk4wex.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/watch/v/f/2/-original-imagrdzghye4wtqq.jpeg?q=70",
  ];
  var names = [
    "Vagabond sack",
    "stella",
    "Whitney belt",
    "Garden strand",
    "Strut earnings",
    "Varsity socks",
    "Reebok Cap",
    "Analog Watch"
  ];
  var price = [
    "\$120.00",
    "\$58.00",
    "\$35.00",
    "\$98.00",
    "\$34.00",
    "\$12.00",
    "\$18.00",
    "\$28.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("SHRINE"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.sort_rounded),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildListDelegate(
          List.generate(
            8,
            (index) => Padding(
              padding: const EdgeInsets.all(2),
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 120,
                  width: 150,
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(10)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(images[index]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          names[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          price[index],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
