import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class BackgroundAnimation extends StatefulWidget {
  const BackgroundAnimation({super.key});

  @override
  State<BackgroundAnimation> createState() => _BackgroundAnimationState();
}

class _BackgroundAnimationState extends State<BackgroundAnimation>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            spawnMaxRadius: 50, // raduius of background object
            spawnMinSpeed: 15, // minimum speed of object moving
            particleCount: 70, // no of ohjects in background
            spawnMaxSpeed: 40,
            spawnOpacity: 0.3, // maximum speed of object moving in background
          baseColor: Colors.blueAccent,
          // image: Image(image: AssetImage("images/coca cola.png")),
         // that't it from today video 

          ),
        ),
        child: const Center(child: Text("Animated Background")),
      ),
    );
  }
}
