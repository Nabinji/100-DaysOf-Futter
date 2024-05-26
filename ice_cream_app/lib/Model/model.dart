import 'package:flutter/material.dart';

class IceCream {
  String image;
  String name;
  String price;
  int star;
  Color? color;

  IceCream({
    required this.price,
    required this.image,
    required this.name,
    this.color,
     required this.star,
  });
}

List<IceCream> iceCreamList = [
  IceCream(
    image: "images/image1.png",
    price: "5",
    name: "Chocolate Icecream",
    star: 4,
    color: const Color(0xffEFD3A8),
  ),
  IceCream(
      image: "images/image13.png",
      price: "5",
      name: "Strawbery Icecream",
      star: 5,
      color: const Color(0xffFFB9CB)),
  IceCream(
      image: "images/image1.png",
      price: "2",
      name: "Mango Icecream",
      star: 3,
      color: const Color(0xff91E7DC)),
  IceCream(
      image: "images/image8.png",
      price: "10",
      name: "Oreo Icecream",
      star: 5,
      color: const Color(0xffF2DA54)),
  IceCream(
      image: "images/image5.png",
      price: "7",
      name: "Apple Icecream",
      star: 4,
      color: const Color(0xffFFC2AB)),
  IceCream(
      image: "images/image6.png",
      price: "9",
      name: "Orange Icecream",
      star: 4,
      color: const Color(0xffB1D1FF)),
];

List<IceCream> popularFlavours = [
  IceCream(
    image: "images/image6.png",
    price: "10",
    name: "Oreo",
    star: 5,
  ),
  IceCream(
    image: "images/image12.png",
    price: "2",
    name: "Mango",
    star: 5,
  ),
  IceCream(
    image: "images/image11.png",
    price: "9",
    name: "Orange",
    star: 5,
  ),
  IceCream(
    image: "images/image9.png",
    price: "5",
    name: "Chocolate",
    star: 5,
  ),
  IceCream(
    image: "images/image4.png",
    price: "5",
    name: "Strawbery",
    star: 5,
  ),
  IceCream(
    image: "images/image5.png",
    price: "7",
    name: "Apple",
    star: 5,
  ),
];
