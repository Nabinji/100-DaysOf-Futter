import 'package:flutter/material.dart';

class StojoDetail {
  String image;
  String name;
  Color color;
  Color sideColor;
  int price;

  StojoDetail({
    required this.sideColor,
    required this.color,
    required this.image,
    required this.name,
    required this.price,
  });
}

List<StojoDetail> userItems = [
  StojoDetail(
    sideColor: const Color.fromARGB(255, 235, 209, 148),
    color: const Color(0xFFE7DABC),
    image: "Images/5.png",
    name: 'Stojo Bottle',
    price: 25,
  ),
  StojoDetail(
    sideColor: const Color.fromARGB(255, 196, 122, 132),
    color: const Color(0xFFDCBEC2),
    image: "Images/1.png",
    name: 'Stojo Cup',
    price: 20,
  ),
  StojoDetail(
    sideColor: const Color.fromARGB(255, 105, 162, 159),
    color: const Color(0xFF9DB2B1),
    image: "Images/6.png",
    name: 'Stojo Cup',
    price: 20,
  ),
  StojoDetail(
    sideColor: const Color.fromARGB(255, 155, 210, 244),
    color: const Color(0xFFC7E9FE),
    image: "Images/3.png",
    name: 'Stojo Bundle',
    price: 15,
  ),
];
