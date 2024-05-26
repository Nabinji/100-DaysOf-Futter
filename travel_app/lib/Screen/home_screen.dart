import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/Model/model.dart';
import 'package:travel_app/Screen/hot_destination.dart';
import 'package:travel_app/Utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                backgroundColor1,
                backgroundColor2,
                backgroundColor2
              ]),
            ),
            child: ListView(
              children: [
                myAppBar(),
                // for scrollable image
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destination.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                        child: scrollableImage(
                            context, destination[index]["image"]!),
                      );
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.035),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot Destination",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: primaryColor.withOpacity(0.7),
                        ),
                      ),
                      const Text(
                        "More",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white24,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotDestination.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                        child: hotDestinationItems(
                            hotDestination[index]["image"]!,
                            hotDestination[index]["name"]!,
                            hotDestination[index]["noOfPlace"]!,
                            context),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 35,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Visiters Reviews",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: primaryColor.withOpacity(0.7),
                        ),
                      ),
                      const Text(
                        "22 Review",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white24,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("images/profile.png"),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: size.width - 100,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Arjun Unni",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: primaryColor.withOpacity(0.7),
                                  ),
                                ),
                                const Text(
                                  "Jan 25",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: Colors.white24,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "A travel app is a mobile application designed to assist users in planning, organizing, and executing their travel activities efficiently. These apps typically offer a range of features including flight and hotel bookings, itinerary planning, navigation assistance, currency conversion, language translation, weather forecasts, and local recommendations for dining and activities.",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white30,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    backgroundColor1,
                    backgroundColor2,
                  ],
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home_rounded,
                    size: 42,
                    color: Colors.white38,
                  ),
                  Icon(
                    Icons.place,
                    size: 42,
                    color: primaryColor,
                  ),
                  Icon(
                    Icons.person,
                    size: 42,
                    color: Colors.white38,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding myAppBar() {
    return const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  right: 20,
                  left: 20,
                  bottom: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Destination",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        color: primaryColor,
                      ),
                    ),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white12,
                      child: Icon(
                        Icons.search,
                        color: Colors.white38,
                        size: 30,
                      ),
                    )
                  ],
                ),
              );
  }

  Widget hotDestinationItems(
    String image,
    String name,
    String noOfTourism,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HotDestination(image, name),
          ),
        );
      },
      child: Stack(
        children: [
          // for image
          Hero(
            tag: image,
            child: Container(
              height: 220,
              width: 150,
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // for image shadow,
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 220,
              width: 150,
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
          // for name and more
          Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                      color: primaryColor.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    noOfTourism,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 11,
                      color: Colors.white30,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget scrollableImage(BuildContext context, String image) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(
            right: 20,
          ),
          width: size.width / 1.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 1.0,
              child: Container(
                height: 220,
                width: size.width / 1.2,
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
            ))
      ],
    );
  }
}
