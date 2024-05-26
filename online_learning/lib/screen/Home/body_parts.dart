import 'package:flutter/material.dart';
import 'package:online_learning/Widget/welcom_text.dart';
import 'package:online_learning/constant.dart';
import 'package:online_learning/screen/Detail/detail_screen.dart';
import 'package:svg_flutter/svg.dart';

class BodyParts extends StatelessWidget {
  const BodyParts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // for welcome text
        welcomeText(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MultimediaCard(
                image: "Images/learning01.svg",
                check: true,
              ),
              MultimediaCard(
                image: "Images/learning02.svg",
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MultimediaCard(
                image: "Images/learning03.svg",
              ),
              MultimediaCard(
                image: "Images/learning04.svg",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MultimediaCard extends StatelessWidget {
  const MultimediaCard({
    super.key,
    this.check = false,
    required this.image,
  });
  final bool check;
  final image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailScreen()));
      },
      child: Container(
        width: 180,
        height: 275,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: check ? primaryColor : const Color(0xFFFFF4F4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Multimedia",
              style: TextStyle(
                fontSize: 16,
                color: check ? Colors.white : secondTextColor,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "Lorem ipaum dolor sit amet",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: check ? Colors.white : primaryTextColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 3,
                  width: 30,
                  color: check ? Colors.white : subColor,
                ),
                Container(
                  height: 3,
                  width: 80,
                  color: lineColor,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SvgPicture.asset(
                image,
                height: 170,
              ),
            )
          ],
        ),
      ),
    );
  }
}
