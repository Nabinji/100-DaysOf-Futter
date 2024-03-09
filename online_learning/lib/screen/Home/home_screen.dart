import 'package:flutter/material.dart';
import 'package:online_learning/Widget/botton_nav_bar.dart';
import 'package:online_learning/constant.dart';
import 'package:online_learning/screen/Home/body_parts.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // for appbar text and profile and search icon
      appBar: myAppbar(),
      // for body parts
      body: const BodyParts(),
      // for bottom parts
      bottomNavigationBar: const myBottomNavigationBar(),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: backgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          "Hello, Rusdi",
          style: TextStyle(fontWeight: FontWeight.bold, color: primaryTextColor),
        ),
      ),
      actions: [
        SvgPicture.asset("Images/search.svg"),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset("Images/user.svg"),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
