import 'package:flutter/material.dart';
import 'package:online_learning/constant.dart';
import 'package:svg_flutter/svg.dart';

class myBottomNavigationBar extends StatelessWidget {
  const myBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 42,
            width: 42,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: subColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              "Images/book.svg",
            ),
          ),
          Container(
            height: 42,
            width: 42,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              "Images/home.svg",
            ),
          ),
          Container(
            height: 42,
            width: 42,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              "Images/more.svg",
            ),
          ),
        ],
      ),
    );
  }
}
