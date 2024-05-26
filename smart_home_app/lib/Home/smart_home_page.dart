import 'package:flutter/material.dart';
import 'package:smart_home_app/Home/services.dart';
import 'package:smart_home_app/constants.dart';

class SmartHomePage extends StatefulWidget {
  const SmartHomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SmartHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.only(top: 5, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HI JOHN",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Image.asset(
                  "images/menu.png",
                  height: 35,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 30),
                  // for home image
                  Image.asset(
                    'images/smart home.png',
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Smart Home",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "SERVICES",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Services(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
