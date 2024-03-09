import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_learning/constant.dart';
import 'package:online_learning/screen/Home/home_screen.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // splash screen is navigate to home screen after 1 second
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Column(
        children: [
          onlineLearnign(),
          Expanded(
              child: SvgPicture.asset(
            "Images/welcome.svg",
            width: double.infinity,
            alignment: Alignment.center,
          ))
        ],
      )),
    );
  }

  Padding onlineLearnign() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Online Learning",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem ipsum dolor sit \namet, consectetur \nadipiscing elit",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
