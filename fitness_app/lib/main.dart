import 'package:flutter/material.dart';

import 'Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
// this is the root 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}
