import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_registar_app/Screen/home/spash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:MySplashScreen(),
    );
  }
}
