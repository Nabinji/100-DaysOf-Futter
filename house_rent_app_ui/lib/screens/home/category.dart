import 'package:flutter/material.dart';
import 'package:house_rent_app_ui/constants.dart';
import 'package:house_rent_app_ui/model/house.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedItems = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedItems = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 3,
                        color: selectedItems == index
                            ? primaryColor
                            : Colors.transparent),
                  ),
                ),
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                      color:
                          selectedItems == index ? primaryColor : bodyTextColor,
                      fontWeight: selectedItems == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: selectedItems == index ? 16 : 14),
                ),
              ),
            );
          }),
    );
  }
}
