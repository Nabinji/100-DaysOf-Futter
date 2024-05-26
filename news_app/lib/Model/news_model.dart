import 'package:flutter/material.dart';

class HotTopic {
  String image;
  String name;
  Color color;

  HotTopic({
    required this.color,
    required this.image,
    required this.name,
  });
}

List<HotTopic> topicItems = [
  HotTopic(
    color: const Color(0xFF3180FF),
    image: "Images/world.png",
    name: 'World',
  ),
  HotTopic(
    color: const Color(0xFFFB3C5F),
    image: "Images/tech.png",
    name: 'Tech',
  ),
  HotTopic(
    color: const Color(0xFF57CBFF),
    image: "Images/music.png",
    name: 'Music',
  ),
  HotTopic(
    color: const Color(0xFFFF7A23),
    image: "Images/travel.png",
    name: 'Travel',
  ),
  HotTopic(
    color: const Color(0xFF0AE3C6),
    image: "Images/kitchen.png",
    name: 'Kitchen',
  ),
  HotTopic(
    color: const Color(0xFF8349DF),
    image: "Images/fashion.png",
    name: 'Fashion',
  ),
];

// model for your news
class Yournews {
  String image;
  String newsImage;
  String newsTitle;
  String newsCategories;
  String time;
  String date;
  Color color;
  String description;

  Yournews({
    required this.image,
    required this.newsImage,
    required this.newsTitle,
    required this.newsCategories,
    required this.time,
    required this.date,
    required this.color,
    required this.description,
  });
}

List<Yournews> newsItems = [
  Yournews(
    description: "Before embarking on a journey to travel the world, it's essential to prepare adequately to ensure a smooth and enjoyable experience.Research the countries and regions you plan to visit. ",
    newsImage: "Images/travelling.png",
    image: "Images/news travel.png",
    newsTitle: 'What i know before travelling the world',
    newsCategories: "TRAVEL",
    date: 'Sunday 2 March 2024',
    time: '2m',
    color: const Color(0xFFFF7A23),
  ),
  Yournews(
    description: "Background music can greatly enhance your focus and productivity while programming. The best music for programming varies from person to person, as it depends on personal preferences and what helps you concentrate.",
    newsImage: "Images/music program.png",
    image: "Images/programming music.png",
    newsTitle: 'Background music for programming',
    newsCategories: "MUSIC",
    date: 'Saturday 29 Nov 2023',
    time: '4h',
    color: const Color(0xFF57CBFF),
  ),
  Yournews(
    description: "That iteration of the paper served readers well for the past 17 years, but it needed to be updated. From this week, The Economist has a fresher look, with typefaces better suited to both print and digital formats.",
    newsImage: "Images/design news.png",
    image: "Images/tech image.png",
    newsTitle: "How to redesign a 175-year-old newspaper",
    newsCategories: "TECH",
    date: 'Saturday 29 Nov 2019',
    time: '10h',
    color: const Color(0xFFFB3C5F),
  ),
   Yournews(
    description:"The term world can have different meanings depending on the context in which it is used:Planet Earth: In a literal sense, world refers to the planet we inhabit, including its land, oceans, atmosphere, and all living organisms.",
    newsImage: "Images/world news.png",
    image: "Images/world image.png",
    newsTitle: "Whats your openion about the world",
    newsCategories: "WORLD",
    date: 'Saturday 29 Nov 1101',
    time: '∞',
   color: const Color(0xFF3180FF),
  ),
];
