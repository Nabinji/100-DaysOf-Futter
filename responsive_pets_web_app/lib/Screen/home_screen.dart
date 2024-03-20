import 'package:flutter/material.dart';
import 'package:responsive_pets_web_app/Screen/Body/body_parts.dart';
import 'package:responsive_pets_web_app/Screen/Footer/footer.dart';
import 'package:responsive_pets_web_app/Screen/Header/header_menu.dart';
import 'package:responsive_pets_web_app/Screen/Header/header_parts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    "images/pets logo.png",
                  ),
                ),
              ),
            ),
            MobMenu(),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // for header parts
            HeaderParts(),
            // body parts
            BodyParts(),
            // footer parts
            FooterParts(),
          ],
        ),
      ),
    );
  }
}
