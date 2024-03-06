import 'package:flutter/material.dart';

class FitnessDetail {
  String image;
  String emojiImage;
  String name;
  String instructor;
  String description;
  Color color;
  int time;

  FitnessDetail({
    required this.emojiImage,
    required this.description,
    required this.color,
    required this.image,
    required this.name,
    required this.instructor,
    required this.time,
  });
}

List<FitnessDetail> userItems = [
  FitnessDetail(
    emojiImage: "Images/4.png",
    description: "Yoga is an ancient practice originating from India that integrates physical postures (asanas), breathing techniques (pranayama), and meditation. It promotes physical strength, flexibility, and mental well-being, offering a diverse range of styles to suit different needs, from gentle stretching to intense workouts.",
    color: const Color(0xFFC7E9FE),
    image: "Images/yoga1.png",
    name: 'Yoga',
    instructor: "Love Danial",
    time: 25,
  ),
  FitnessDetail(
    emojiImage: "Images/5.png",
    description: "Drills, specific exercises targeting athletic performance, refine skills and technique, emphasizing speed, agility, coordination, and strength. Each of these practices offers unique pathways to physical health, mental well-being, and personal growth.",
    color: const Color(0xFFFFDEFF),
    image: "Images/drill.png",
    name: 'Drill',
    instructor: "Jany Fox",
    time: 10,
  ),
  FitnessDetail(
    emojiImage: "Images/3.png",
    description: "Running, on the other hand, engages the body in continuous aerobic movement, providing cardiovascular benefits, improving endurance, and releasing endorphins for a mood boost. Meanwhile, drills, specific exercises targeting athletic performance, refine skills and technique, emphasizing speed, agility, coordination, and strength. ",
    color: const Color.fromARGB(255, 199, 254, 216),
    image: "Images/running1.png",
    name: 'Running',
    instructor: "Robert Sel",
    time: 52,
  ),
  FitnessDetail(
    emojiImage: "Images/6.png",
    description: " Meditation, a complementary practice, further enhances mental clarity and emotional stability through focused attention, mindfulness, or contemplation. Running, on the other hand, engages the body in continuous aerobic movement, providing cardiovascular benefits, improving endurance, and releasing endorphins for a mood boost. ",
    color: const Color.fromARGB(255, 200, 199, 254),
    image: "Images/mediation1.png",
    name: 'Mediation',
    instructor: "John Doy",
    time: 20,
  ),
];
