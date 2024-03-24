import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scooter_store_ui/Screen/specification_detail.dart';
import 'package:scooter_store_ui/constants.dart';
import 'package:scooter_store_ui/models/scooter_mode.dart';

import 'adult_scooters.dart';

class ScooterHomePage extends StatefulWidget {
  const ScooterHomePage({
    super.key,
  });

  @override
  _ScooterHomePageState createState() => _ScooterHomePageState();
}

class _ScooterHomePageState extends State<ScooterHomePage> {
  late bool isShow;
  double mainHeight = 773;
  double height = 90;
  @override
  void initState() {
    isShow = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              primaryColor,
              secondaryColor,
              secondaryColor,
              secondaryColor,
              secondaryColor,
              secondaryColor,
              secondaryColor,
              secondaryColor,
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 70,
                color: primaryColor,
              ),
              AnimatedContainer(
                height: mainHeight,
                duration: const Duration(microseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (isShow)
                        // for menu items, image display and more
                        AdultScooters(size: size),
                      // for name price and description
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Oxelo Town 9",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              "£120,99",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25,
                                  color: secondaryColor),
                            ),
                            const Text(
                              "Easy Fold Adult Scooter will transform the wav vou commute...",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(microseconds: 1),
                height: height,
                child: Column(
                  children: [
                    if (isShow)
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Show Details",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 22,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                isShow = false;
                                mainHeight = 213;
                                height = 650;
                                setState(() {});
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: cardColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.arrow_downward,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    if (!isShow)
                      (Container(
                        color: secondaryColor,
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 40,
                            bottom: 20,
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Key Features",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    for (Scooter scooter in listScooter)
                                      SizedBox(
                                        height: size.height * 0.23,
                                        width: size.width * 0.39,
                                        child: Card(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          color: cardColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                scooter.imageUrl,
                                                height: size.height * 0.2,
                                                width: size.width * 0.35,
                                                fit: BoxFit.cover,
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                child: Container(
                                                  height: 45,
                                                  width: size.width * 0.39,
                                                  decoration: BoxDecoration(
                                                    color: secondaryColor
                                                        .withOpacity(0.4),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      scooter.name,
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Specifications Rate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              // for wheel weight and speed,
                              const SpecificationDetail(),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 30, top: 20, bottom: 20),
                                child: Container(
                                  height: 65,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.amber[700],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Buy Now",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const Icon(Icons.arrow_forward,)
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
