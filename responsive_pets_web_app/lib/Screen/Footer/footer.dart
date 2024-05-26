import 'package:flutter/material.dart';
import 'package:responsive_pets_web_app/constants.dart';

class FooterParts extends StatelessWidget {
  const FooterParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            "images/care.png",
            height: 230,
            width: 230,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Care & Healthy Pets",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          const Text(
            "Pets are domesticated animals kept primarily for companionship, pleasure, or as a hobby, rather than for work or food production. They play significant roles in the lives of many people, providing companionship, emotional support, and sometimes even therapeutic benefits. Pets come in various shapes, sizes, and species. Common types of pets include dogs, cats, birds, fish, rabbits,",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
