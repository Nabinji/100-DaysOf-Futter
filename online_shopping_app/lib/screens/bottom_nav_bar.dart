import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/Product/product_display_screen.dart';
import 'package:online_shopping_app/screens/constants.dart';

import 'Home/home_screen.dart';

List<Widget> screen = [const HomeScreen(), const ProductDisplayScreen()];

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      backgroundColor: primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedFontSize: 0,
        selectedItemColor: buttonColor,
        unselectedItemColor: Colors.white60,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade900,
        iconSize: 32,
        onTap: (index) {
          if (index <= 1) {
            setState(() {
              currentIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: "Grid"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
      ),
    );
  }
}
