import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent_app_ui/constants.dart';
import 'package:house_rent_app_ui/model/house.dart';
import 'package:house_rent_app_ui/screens/detail/detail_screen.dart';

class TopRecommended extends StatelessWidget {
  const TopRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedList.length,
        itemBuilder: (context, index) {
          final rent = recommendedList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(rent: rent),
                ),
              );
            },
            child: Container(
              height: 300,
              width: 250,
              margin: const EdgeInsets.only(
                left: 20,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  // for image
                  Hero(
                    tag: rent.imageUrl,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              rent.imageUrl,
                            ),
                            fit: BoxFit.cover),
                      ),
                      
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.white30,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  rent.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: titleTextColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  rent.address,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: titleTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          circularBox("assets/icons/heart.svg")
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 15,
                      top: 15,
                      child: circularBox("assets/icons/mark.svg"))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container circularBox(image) {
    return Container(
      height: 25,
      width: 25,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
      child: SvgPicture.asset(image),
    );
  }
}
