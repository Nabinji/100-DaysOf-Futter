import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 20.0, left: 20, top: 40),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Categories",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "See All",
                style: TextStyle(
                    fontSize: 14, color: Color(0xFFA36C88)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFFF8CDEC),
                child: Image.asset(
                  "Images/beatch.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFF9ED2F7),
                child: Image.asset(
                  "Images/camping.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFfcbb8ef),
                child: Image.asset(
                  "Images/car.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFFFacdcc),
                child: Image.asset(
                  "Images/food.png",
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 13, right: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Beach",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
                 Text(
                  "Camping",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
                 Text(
                  "Car",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
                 Text(
                  "Food",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFB07C97),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
