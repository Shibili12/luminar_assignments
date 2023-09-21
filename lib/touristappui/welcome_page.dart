import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/tourist.png"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('Homepage');
              },
              child: Text("Login"),
            ),
            Divider(
              thickness: .6,
              color: Colors.grey,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: ListTile(
                title: Text("Login with facebook"),
                trailing: Icon(Icons.facebook),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlue),
              child: ListTile(
                title: Text("Login with twitter"),
                trailing: Icon(Icons.one_x_mobiledata),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              child: ListTile(
                title: Text("Login with google"),
                trailing: Icon(Icons.g_mobiledata),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
