import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/constants.dart';

class ImageSize extends StatelessWidget {
  const ImageSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 90,
            width: 90,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: kSelectCardBackgroundColor,
                width: 1.5,
              ),
            ),
            child: Image.asset("assets/images/detail1.png"),
          ),
          Container(
              height: 90,
            width: 90,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/detail2.png"),
          ),
          Container(
             height: 90,
            width: 90,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/detail3.png"),
          ),
          Container(
             height: 90,
            width: 90,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/detail4.png"),
          ),
        ],
      ),
    );
  }
}
