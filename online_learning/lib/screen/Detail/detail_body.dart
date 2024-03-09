import 'package:flutter/material.dart';
import 'package:online_learning/Widget/welcom_text.dart';
import 'package:online_learning/constant.dart';
import 'package:online_learning/screen/Detail/cours_list.dart';
import 'package:svg_flutter/svg.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // welcome text
        const welcomeText(),
        // for image
        images(),
        // for course
        courseDuration(),
        // detail about course,
        const ListOfCourse(),
      ],
    );
  }

  Padding courseDuration() {
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Course Detail",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 30,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: subColor, borderRadius: BorderRadius.circular(7)),
              child: Row(
                children: [
                  SvgPicture.asset("Images/clock.svg"),
                  const SizedBox(width: 5),
                  Text(
                    "3 hours, 30min",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: primaryTextColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }

  Padding images() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: 180,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset("Images/intro.svg"),
      ),
    );
  }
}
