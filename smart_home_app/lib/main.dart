import 'package:flutter/material.dart';
import 'package:smart_home_app/Home/smart_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
   
      home: SmartHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
