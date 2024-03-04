import 'package:flutter/material.dart';

class DoctorDetail {
  String image;
  String categoryImage;
  String drName;
  String drCategory;
  Color containerColor;
  Color color;
  String date;
  int noOfDoctor;
  int time1;
  int time2;
  int time3;
  String consultainTime;
  String aboutDoctor;

  DoctorDetail({
    required this.containerColor,
    required this.color,
    required this.date,
    required this.consultainTime,
    required this.time2,
    required this.time3,
    required this.image,
    required this.categoryImage,
    required this.drName,
    required this.drCategory,
    required this.noOfDoctor,
    required this.aboutDoctor,
    required this.time1,
  });
}

List<DoctorDetail> doctorItems = [
  DoctorDetail(
      image: "Images/doctor.png",
      categoryImage: "Images/teeth.png",
      drName: 'Dr. Jason',
      drCategory: "Dental Surgon",
      noOfDoctor: 79,
      time1: 9,
      date: " 15\nJan",
      aboutDoctor:
          "It seems like you're referring to a dentist who specializes in oral surgery. Oral and maxillofacial surgeons are dental specialists who are trained to perform surgical procedures on the mouth, jaws, face, and neck",
      consultainTime: 'Sunday . 9am - 11am',
      time2: 11,
      time3: 16,
      containerColor: const Color(0xFFEEF0FF),
      color: const Color(0xFF6D7BCE)),
  DoctorDetail(
      image: "Images/doctor1.png",
      categoryImage: "Images/heart.png",
      drName: 'Dr. Johan',
      drCategory: "Heart Surgeon",
      noOfDoctor: 70,
       date: " 11\nFeb",
      time1: 8,
      aboutDoctor:
          "A heart surgeon, also known as a cardiac surgeon, is a highly trained medical professional who specializes in surgical procedures of the heart and blood vessels. They perform surgeries to treat various conditions affecting the heart",
      consultainTime: 'Monday . 8am - 12am',
      time2: 10,
      time3: 12,
      containerColor: const Color(0xFFFCEFDF),
      color: const Color(0xFFFF8906)),
  DoctorDetail(
      image: "Images/doctor2.png",
      categoryImage: "Images/eye.png",
      drName: 'Dr. Smith',
      drCategory: "Eye Surgon",
      noOfDoctor: 55,
       date: " 05\nApr",
      time1: 6,
      aboutDoctor:
          "An eye surgeon, also known as an ophthalmologist, specializes in the medical and surgical treatment of diseases and conditions related to the eyes. Ophthalmologists undergo extensive training, including medical school, internship",
      consultainTime: 'Sunday . 9am - 11am',
      time2: 10,
      time3: 18,
      containerColor: const Color(0xFFEEF0FF),
      color: const Color(0xFF6D7BCE)),
  DoctorDetail(
     date: " 10\nDec",
    image: "Images/doctor3.png",
    categoryImage: "Images/skeleton1.png",
    drName: 'Dr. Dhoni',
    drCategory: "Skeleton Surgon",
    noOfDoctor: 99,
    time1: 7,
    aboutDoctor:
        "The term skeleton surgeon isn't commonly used in medical practice. However, based on the context, it sounds like you might be referring to orthopedic surgeons, who specialize in the diagnosis, treatment, and surgical management",
    consultainTime: 'Friday . 8am - 11am',
    time2: 11,
    time3: 18,
    containerColor: const Color.fromARGB(255, 238, 255, 244),
    color: const Color.fromARGB(255, 109, 206, 122),
  ),
  DoctorDetail(
    image: "Images/doctor4.png",
    categoryImage: "Images/lungs.png",
    drName: 'Dr. Messi',
    drCategory: "Lungs Surgon",
    noOfDoctor: 67,
    time1: 8,
     date: " 30\nApr",
    aboutDoctor:
        "The term Lungs surgeon isn't commonly used in medical practice. However, based on the context, it sounds like you might be referring to orthopedic surgeons, who specialize in the diagnosis, treatment, and surgical management",
    consultainTime: 'Sunday . 5am - 10am',
    time2: 11,
    time3: 18,
    containerColor: const Color.fromARGB(255, 252, 238, 255),
    color: const Color.fromARGB(255, 191, 109, 206),
  ),
];
