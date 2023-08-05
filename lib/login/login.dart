import 'package:flutter/material.dart';
import 'package:luminar_assignments/login/home.dart';
import 'package:luminar_assignments/login/registration.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisiblity1 = true;
  // bool nopasswordvisiblity2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Welcome back ! login eith your credentials",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (email) {
                  if (email!.isEmpty || email.contains("@gmail.com")) {
                    return "enter valid email";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email ID",
                ),
              ),
              SizedBox(
                height: 7,
              ),
              TextFormField(
                obscureText: nopasswordvisiblity1,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "password is incorrect";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (nopasswordvisiblity1 == true) {
                          nopasswordvisiblity1 = false;
                        } else {
                          nopasswordvisiblity1 = true;
                        }
                      });
                    },
                    icon: Icon(
                      nopasswordvisiblity1 == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                  hintText: "password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (nopasswordvisiblity1 == true) {
                          nopasswordvisiblity1 = false;
                        } else {
                          nopasswordvisiblity1 = true;
                        }
                      });
                    },
                    icon: Icon(
                      nopasswordvisiblity1 == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    minimumSize: Size(400, 50)),
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("enter correct email and password"),
                      ),
                    );
                  }
                },
                child: Text("Login"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Registration(),
                      ),
                    );
                  },
                  child: Text(
                    "Do you have an account? sign up",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
