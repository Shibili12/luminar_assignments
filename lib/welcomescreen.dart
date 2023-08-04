import 'package:flutter/material.dart';
import 'package:luminar_assignments/login.dart';
import 'package:luminar_assignments/registration.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              "Hello There!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Automatic Identity verification which enable you to verify your identity",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/welcome.png",
              height: 300,
              width: 300,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(275, 50)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Text(
                "login",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(275, 50)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Registration()),
                );
              },
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
