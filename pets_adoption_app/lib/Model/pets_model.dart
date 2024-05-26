import 'package:flutter/material.dart';

class PetsModel {
  String name;
  String breed;
  String image;
  String age;
  String sex;
  String origin;
  Color color;
  String description;

  PetsModel({
    required this.image,
    required this.name,
    required this.breed,
    required this.sex,
    required this.age,
    required this.origin,
    required this.color,
    required this.description,
  });
}

List<PetsModel> cats = [
  PetsModel(
    name: 'Mono LaMi',
    breed: 'British Shorthair cats',
    image: 'images/cat3.png',
    age: "1",
    origin: "US",
    sex: "Femail ",
    color: const Color(0xffC1B7B1),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Amila Marko',
    breed: 'LaPerm cats',
    image: 'images/cat2.png',
    age: "2",
    origin: "US",
    sex: "Femail ",
    color: const Color(0xffD7BF9D),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Yon lee',
    breed: 'Persian cat',
    image: 'images/cat1.png',
    age: "3 ",
    origin: "Iran",
    sex: "Femail ",
    color: const Color(0xffB1D1FF),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
];
List<PetsModel> dogs = [
  PetsModel(
    name: 'Max',
    breed: 'Labrador Retriever',
    image: 'images/dog1.png',
    age: " 1",
    origin: "UK",
    sex: "Dog",
    color: const Color(0xffC1B7B1),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Bella',
    breed: 'Golden Retriever',
    image: 'images/dog2.png',
    age: " 2",
    origin: "Italy",
    sex: "Dog",
    color: const Color(0xffD7BF9D),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Charlie',
    breed: 'German Shepherd',
    image: 'images/dog3.png',
    age: " 2.5",
    origin: "India",
    sex: "Dog",
    color: const Color(0xffB1D1FF),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Daisy',
    breed: 'Beagle',
    image: 'images/dog4.png',
    age: "2.5",
    origin: "India",
    sex: "Dog",
    color: const Color(0xffC1B7B1),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Luna',
    breed: 'Siberian Husky',
    image: 'images/dog5.png',
    age: " 2.5",
    origin: "India",
    sex: "Dog",
    color: const Color(0xffB1D1FF),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
];
List<PetsModel> birds = [
  PetsModel(
    name: 'Charlie',
    breed: 'African Grey Parrot',
    image: 'images/bird1.png',
    age: " 1",
    origin: "Nepal",
    sex: "bird",
    color: const Color(0xffC1B7B1),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Rio',
    breed: 'Scarlet Macaw',
    image: 'images/bird2.png',
    age: "1",
    origin: "Fra",
    sex: "Bird",
    color: const Color(0xffC1B7B1),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Sunny',
    breed: 'Cockatiel',
    image: 'images/bird3.png',
    age: " 1",
    origin: " UK",
    sex: "Bird",
    color: const Color(0xffB1D1FF),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
  PetsModel(
    name: 'Blue',
    breed: 'Gold Macaw',
    image: 'images/bird4.png',
    age: " 2",
    origin: "NZ",
    sex: "bird",
    color: const Color(0xffC1B7B1),
    description:
        "Pets bring joy, companionship, and love into our lives. Whether furry, feathered, or scaled, they offer comfort and loyalty. From playful antics to gentle purrs, they teach us patience and responsibility.",
  ),
];
List<PetsModel> snakes = [
  PetsModel(
      name: '',
      breed: '',
      image: '',
      age: "",
      origin: "",
      sex: "",
      color: const Color(0xffC1B7B1),
      description: ""),
  PetsModel(
      name: '',
      breed: '',
      image: '',
      age: "",
      origin: "",
      sex: "",
      description: "",
      color: const Color(0xffC1B7B1)),
];
List<PetsModel> other = [
  PetsModel(
      name: '',
      breed: '',
      image: '',
      age: "",
      origin: "",
      sex: "",
      description: "",
      color: const Color(0xffC1B7B1)),
  PetsModel(
      name: '',
      breed: '',
      image: '',
      age: "",
      origin: "",
      sex: "",
      description: "",
      color: const Color(0xffC1B7B1)),
];

List<String> categoryList = [
  'Cats',
  'Dogs',
  'Birds',
  'Snakes',
  'Other',
];
