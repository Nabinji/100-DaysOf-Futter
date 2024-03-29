import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black54,
      unselectedItemColor: Colors.black26,
      type: BottomNavigationBarType.fixed,
      iconSize: 32,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "images/icon1.png",
            height: 25,
          ),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "",
        ),
      ],
    );
  }
}
