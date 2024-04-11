import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stojo_mobile_app/stojo_home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // for navigtion and transaction
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const StojoHomePage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return ScaleTransition(scale: animation, child: child);
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Stojo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "Images/1.png",
              width: 350,
            )
          ],
        ),
      ),
    );
  }
}
