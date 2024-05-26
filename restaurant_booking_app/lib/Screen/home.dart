import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_booking_app/Model/mode.dart';
import 'package:restaurant_booking_app/Screen/restaurent_detail.dart';
import 'package:restaurant_booking_app/Utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 55,
              left: 25,
              right: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 55,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/image1.png"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // for category selection
          categorySelection(),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: restaurantItems.length,
                itemBuilder: (context, index) {
                  final restaurant = restaurantItems[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RestaurentScreen(restaurant: restaurant),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Column(
                        children: [
                          Hero(
                            tag: restaurant.imageUrl,
                            child: Container(
                              height: 220,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(restaurant.imageUrl),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    spreadRadius: 5,
                                    color: Colors.black12,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      restaurant.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      "${restaurant.totalReview} reviews = ${restaurant.level}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    )
                                  ],
                                ),
                                CircleAvatar(
                                  backgroundColor: primaryColor,
                                  child: Text(
                                    restaurant.rating,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Padding categorySelection() {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        height: 55,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: currentSelected == index
                              ? primaryColor
                              : secondaryColor,
                        ),
                        child: Text(
                          categoryList[index],
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
