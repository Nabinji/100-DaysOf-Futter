import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent_app_ui/constants.dart';
import 'package:house_rent_app_ui/model/house.dart';
import 'package:house_rent_app_ui/screens/detail/house_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.rent});
  final House rent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            detailImage(context),
            const SizedBox(
              height: 20,
            ),
            // for house name, address, location and price
            houseInfo(),
            const SizedBox(
              height: 20,
            ),
            // more house detail
            const HouseDetail(),
            const SizedBox(
              height: 25,
            ),
            // for about
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: titleTextColor),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    rent.description,
                    style: TextStyle(fontSize: 16, color: bodyTextColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              height: 45,
              alignment: Alignment.center,
              child: const Text(
                "Book Now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container houseInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rent.name,
            style: TextStyle(
                color: titleTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            rent.address,
            style: TextStyle(
              color: titleTextColor,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "5000 sqf",
            style: TextStyle(
              color: titleTextColor,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
              text: rent.price,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextSpan(text: ' Fer month')
          ]))
        ],
      ),
    );
  }

  SizedBox detailImage(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Hero(
            tag: rent.imageUrl,
            child: Image.asset(
              rent.imageUrl,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // for back button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_circle_left_sharp,
                    color: Colors.white70,
                  ),
                ),
                // for bookmark button
                Container(
                  height: 25,
                  width: 25,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: secondaryColor, shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/icons/mark.svg"),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
