import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Real Time Database/query_in_realtime.dart';

Future<void> main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Run your app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RealTimeDatabaseQueary(),
    );
  }
}
// Before start the video setup your project with firebase
// If you have any problem to setup then firebase setup video is in i button and description