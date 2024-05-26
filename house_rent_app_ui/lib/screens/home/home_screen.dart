import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent_app_ui/constants.dart';
import 'package:house_rent_app_ui/screens/home/best_offer.dart';
import 'package:house_rent_app_ui/screens/home/category.dart';
import 'package:house_rent_app_ui/screens/home/toprecommend.dart';
import 'package:house_rent_app_ui/widget/bottom_nav_bar.dart';
import 'package:house_rent_app_ui/widget/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      // for bottom navigation bar
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // for profile and menu
            profileAndMenu(),
            //introduction text
            IntroductioText(),
            // for search bar
            const MySearchBar(),
            // for catoegory
            const Category(),
            const SizedBox(height: 20,),
            // for image and more
            const TopRecommended(),
            // best offer
            const BestOffer(),
          ],
        ),
      ),
    );
  }

  Container IntroductioText() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello Raihan!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black45,
              fontSize: 16,
            ),
          ),
          Text(
            "Find your sweet Home",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: titleTextColor,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }

  Padding profileAndMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("assets/icons/menu.svg"),
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          )
        ],
      ),
    );
  }
}


