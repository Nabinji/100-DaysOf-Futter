import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/Utils/colors.dart';

class HotDestination extends StatelessWidget {
  final String image;
  final String name;

  const HotDestination(this.image, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Hero(
      tag: image,
      child: Scaffold(
        body: Stack(
          children: [
            // for background image
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // for back buttom
            Positioned(
              top: MediaQuery.of(context).padding.top,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.59,
                width: size.width,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      backgroundColor1,
                      backgroundColor2,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: primaryColor.withOpacity(0.7),
                      ),
                    ),
                    const Text(
                      "A travel app is a mobile application designed to assist users in planning, organizing, and executing their travel activities efficiently. These apps typically offer a range of features including flight and hotel bookings, itinerary planning, navigation assistance, currency conversion, language translation, weather forecasts, and local recommendations for dining and activities.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white38,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tourist Place",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: primaryColor.withOpacity(0.7),
                          ),
                        ),
                        const Text(
                          "18",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          hotDestinationItems("images/travel.png"),
                          hotDestinationItems("images/travel1.png"),
                          hotDestinationItems("images/travel2.png"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,left: 0,right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightSecondary),
                  child: const Center(
                    child: Text(
                      "Select Location",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hotDestinationItems(String image) {
    return Stack(
      children: [
        // for image
        Container(
          height: 170,
          width: 160,
          margin: const EdgeInsets.only(right: 20),
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // for image shadow,
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 170,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  secondaryColor,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
