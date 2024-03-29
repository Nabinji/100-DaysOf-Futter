import 'package:crypto_wallet_app/screen/Home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:WalletHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

