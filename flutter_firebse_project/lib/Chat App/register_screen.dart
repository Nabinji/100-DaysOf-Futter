import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final auth = FirebaseAuth.instance;
  CollectionReference ref = FirebaseFirestore.instance.collection('user');

  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController =
      new TextEditingController();
  final TextEditingController emailController = new TextEditingController();

  var error = null;

  register(String email, String password) async {
    if (error == null) {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .whenComplete(() {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeeScreen()));
      });
    } else {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: confirmpassController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Confirm Password',
                  ),
                  onChanged: (value) {
                    if (confirmpassController.text != passwordController.text) {
                      setState(() {
                        error = 'error';
                      });
                    } else {
                      setState(() {
                        error = null;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                      height: 40,
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => HomeeScreen()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    MaterialButton(
                      height: 40,
                      onPressed: () {
                        register(emailController.text, passwordController.text);
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
