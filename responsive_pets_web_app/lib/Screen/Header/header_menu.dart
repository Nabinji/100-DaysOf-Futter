import 'package:flutter/material.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        menuItems("Dots"),
        menuItems("Cats"),
        menuItems("Pig"),
        menuItems("Birds"),
        menuItems("Fish"),
        menuItems("Cow"),
      ],
    );
  }

  Container menuItems( title) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      );
  }
}

class MobMenu extends StatelessWidget {
  const MobMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        menuItems("Dots"),
        menuItems("Cats"),
        menuItems("Pig"),
        menuItems("Birds"),
        menuItems("Fish"),
        menuItems("Cow"),
      ],
    );
  }

  Container menuItems(title) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}

