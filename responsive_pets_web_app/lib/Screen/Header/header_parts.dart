import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_pets_web_app/Screen/Header/header_menu.dart';
import 'package:responsive_pets_web_app/Screen/Header/profile_and_cart.dart';
import 'package:responsive_pets_web_app/Screen/Header/search_bar.dart';
import 'package:responsive_pets_web_app/constants.dart';
import 'package:responsive_pets_web_app/responsive.dart';

class HeaderParts extends StatelessWidget {
  const HeaderParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ResponsiveWidget(
                    // mobile parts
                    mobile: Row(
                      children: [
                        Builder(
                          builder: (context) => IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(Icons.menu),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "  PET SHOP",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),

                        const Spacer(),
                        // for profile and cart icons
                        const ProfileAndCart(),
                      ],
                    ),
                    desktop: const Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage(
                              "images/pets logo.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "PET SHOP",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                        // for web menu items
                        WebMenu(),
                        Spacer(),
                        // for profile and cart icons
                        ProfileAndCart(),
                      ],
                    ),
                  ),
                  // for both web and mobile
                  const SizedBox(
                    height: 30,
                  ),
                  // for search bar,
                  const MySearchBar(),
                  const SizedBox(height: 50),
                  ResponsiveWidget(
                    // for mobile
                    mobile: Column(
                      children: [
                        const Text(
                          "Unitl one has loved an animal,\na part of one's soul\nremains unawakened.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "images/pets.png",
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 20),
                        startShoppingButton(),
                      ],
                    ),
                    desktop: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Text(
                                "Unitl one has loved an animal,\na part of one's soul\nremains unawakened.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              startShoppingButton(),
                            ],
                          ),
                          const Spacer(),
                          Expanded(
                            child: Image.asset(
                              "images/pets.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container startShoppingButton() {
    return Container(
      height: 50,
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Text(
          "Start Shopping",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
