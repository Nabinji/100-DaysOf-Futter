import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PageOrRouteAnimation extends StatelessWidget {
  const PageOrRouteAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffB7E7F3),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.02),
          Image.asset(
            "images/image1.jpg",
            height: size.height * 0.55,
          ),
          SizedBox(height: size.height * 0.02),
          GestureDetector(
            onTap: () {
              Get.to(
                () => const SecondScreens(), transition: Transition.circularReveal,
                duration: const Duration(seconds: 15),
              );
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          GestureDetector(
            onTap: () {
              Get.to(() => const ThirdScreen());
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreens extends StatelessWidget {
  const SecondScreens({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.asset(
            "images/image2.jpg",
            height: size.height * 0.5,
            fit: BoxFit.cover,
          ),
          SizedBox(height: size.height * 0.05),
          GestureDetector(
            onTap: () {
              Get.to(
                () => const ThirdScreen(),
                transition: Transition.fade,
              );
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              decoration: BoxDecoration(
                color: const Color(0xffB7E7F3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.asset(
            "images/image5.jpg",
            height: size.height * 0.6,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
