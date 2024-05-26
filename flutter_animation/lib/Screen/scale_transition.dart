import 'dart:async';

import 'package:flutter/material.dart';

class ScaleTransitionAnimation extends StatefulWidget {
  const ScaleTransitionAnimation({super.key});

  @override
  State<ScaleTransitionAnimation> createState() =>
      _ScaleTransitionAnimationState();
}

class _ScaleTransitionAnimationState extends State<ScaleTransitionAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    controller.addListener(() {
      if (controller.isCompleted) {
        Navigator.of(context).push(
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
            return const SecondScreen();
          },
              // for animation during back from second screen
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          }),
        );
        // for back from second screen
        Timer(const Duration(microseconds: 400), () {
          controller.reset();
        });
      }
    });
    scaleAnimation = Tween<double>(begin: 1, end: 12).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // onTap: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => const SecondScreen(),
        //     ),
        //   );
        // },

        onTap: () {
          controller.forward();
        },
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purpleAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
