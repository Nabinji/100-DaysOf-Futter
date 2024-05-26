import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/constants.dart';

class SortBy extends StatelessWidget {
  const SortBy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.filter_list, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    "Sort by",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20,),
          Container(
            width: 85,
            padding: const EdgeInsets.only(right: 10,left: 10),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child:   Text(
              "Shoes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            )
            ),
          ),
            const SizedBox(
            width: 30,
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child:  Center(
                child: Text(
              "FW 2021",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: buttonColor,
              ),
            )),
          ),
            const SizedBox(
            width: 20,
          ),
           Container(
            width: 85,
            padding: const EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
                child: Text(
              "News",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
