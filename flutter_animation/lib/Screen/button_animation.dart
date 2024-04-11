import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const MyButtonItems(
              color: Colors.white,
              child: Text(
                "Click Here",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            const MyButtonItems(
              color: Colors.purpleAccent,
              child: Text(
                "Click Here",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            MyButtonItems(
              color: Colors.purpleAccent,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 70.0,
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ScaleAnimatedText('Think'),
                    ScaleAnimatedText('Build'),
                    ScaleAnimatedText('Ship'),
                  ],
                ),
              ),
            ),
            MyButtonItems(
              color: Colors.orangeAccent,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText(
                        'Hello World',
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButtonItems extends StatefulWidget {
  final Widget child;
  final Color color;
  const MyButtonItems({super.key, required this.child, required this.color});

  @override
  State<MyButtonItems> createState() => _MyButtonItemsState();
}

class _MyButtonItemsState extends State<MyButtonItems>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
    // for reverse  as well
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward(from: 0.0);
      }
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, index) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.purple,
                widget.color,
                Colors.blue,
              ], stops: [
                0.0,
                controller.value,
                1.0,
              ]),
            ),
            child: widget.child,
          );
        },
      ),
    );
  }
}
