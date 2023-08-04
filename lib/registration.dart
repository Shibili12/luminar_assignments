import 'package:flutter/material.dart';
import 'package:luminar_assignments/home.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisiblity1 = true;
  bool nopasswordvisiblity2 = true;
  String? pass;
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
                "Sign Up!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Create an account ! it is free",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (email) {
                  if (email!.isEmpty) {
                    return "enter valid email";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Email Id",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: nopasswordvisiblity1,
                validator: (password) {
                  pass = password;
                  if (password!.isEmpty || password.length < 6) {
                    return "password is incorrect";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
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
              TextFormField(
                obscureText: nopasswordvisiblity2,
                validator: (confirmpassword) {
                  if (confirmpassword!.isEmpty || confirmpassword != pass) {
                    return "password do not match";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (nopasswordvisiblity2 == true) {
                          nopasswordvisiblity2 = false;
                        } else {
                          nopasswordvisiblity2 = true;
                        }
                      });
                    },
                    icon: Icon(
                      nopasswordvisiblity2 == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                  hintText: "Re-enter password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (nopasswordvisiblity2 == true) {
                          nopasswordvisiblity2 = false;
                        } else {
                          nopasswordvisiblity2 = true;
                        }
                      });
                    },
                    icon: Icon(
                      nopasswordvisiblity2 == true
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
                  setState(() {
                    if (valid) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("enter valid details"),
                        ),
                      );
                    }
                  });
                },
                child: Text("Sign up"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Do you have an account? Login",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
