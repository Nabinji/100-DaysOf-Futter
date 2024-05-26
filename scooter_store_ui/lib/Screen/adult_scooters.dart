import 'package:flutter/material.dart';

import '../constants.dart';

class AdultScooters extends StatelessWidget {
  const AdultScooters({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu_rounded, color: Colors.black54, size: 33),
              const Text(
                "Adulat Scooters",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 33,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 8,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: size.height * 0.04,
          ),
          child: Stack(
            children: [
              // for circle
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  height: size.height * 0.4,
                  width: size.height * 0.4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [primaryColor, Colors.white],
                    ),
                  ),
                ),
              ),

              // for image
              Container(
                height: size.height * 0.44,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/image1.png",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // for dot slider
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 7; i++)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: i == 3 ? 8 : 4,
                width: i == 3 ? 8 : 4,
                decoration: BoxDecoration(
                    color: i == 3 ? secondaryColor : Colors.black26,
                    shape: BoxShape.circle),
              ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
