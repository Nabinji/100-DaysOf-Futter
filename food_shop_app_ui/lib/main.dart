import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screen/shop_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home:  ShopHomePage(),
    );
  }
}
