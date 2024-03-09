import 'package:flutter/material.dart';

class welcomeText extends StatelessWidget {
  const welcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Text(
        "Lorem ipsum dolor sit \namet, consectetur \nadipiscing elit",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
      ),
    );
  }
}
