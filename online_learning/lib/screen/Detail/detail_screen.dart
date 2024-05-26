import 'package:flutter/material.dart';
import 'package:online_learning/Widget/botton_nav_bar.dart';
import 'package:online_learning/constant.dart';
import 'package:online_learning/screen/Detail/detail_body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Multimedia",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
          ),
        ),
      ),
      body: const DetailBody(),
      bottomNavigationBar: const myBottomNavigationBar(),
    );
  }
}
