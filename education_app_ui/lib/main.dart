import 'package:education_app_ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // For fonts
        textTheme: GoogleFonts.notoSansAdlamTextTheme(),
      ),
      home: const SplashScreen (),
    );
  }
}
