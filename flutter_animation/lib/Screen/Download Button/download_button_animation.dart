import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animation/Screen/Download%20Button/custom_paint.dart';

class DownloadButtonAnimation extends StatefulWidget {
  const DownloadButtonAnimation({super.key});

  @override
  State<DownloadButtonAnimation> createState() =>
      _DownloadButtonAnimationState();
}

class _DownloadButtonAnimationState extends State<DownloadButtonAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );
    // for reverse
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        return controller.reset();
      }
    });
    super.initState();
  }

  // // for width change
  late final Animation<double> width =
      Tween<double>(begin: 250, end: 110).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 0.3, curve: Curves.fastOutSlowIn),
    ),
  );
// for fontSize change
  late final Animation<double> fontSize =
      Tween<double>(begin: 30, end: 0).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 0.3, curve: Curves.fastOutSlowIn),
    ),
  );
  // for opacity change

  late final Animation<double> opacity = TweenSequence([
    TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: 1.0).chain(
          CurveTween(curve: Curves.fastOutSlowIn),
        ),
        weight: 50),
    TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.0).chain(
          CurveTween(curve: Curves.fastOutSlowIn),
        ),
        weight: 50),
  ]).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.03, 0.5, curve: Curves.fastOutSlowIn),
    ),
  );
// for circular arc
  late final Animation<double> arc =
      Tween<double>(begin: 0.0, end: 2 * pi).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.3, 0.8, curve: Curves.fastOutSlowIn),
    ),
  );
  // for liner
  Offset firstDot = const Offset(-15, 5);
  Offset firstCommon = const Offset(-5, 15);
  Offset secondDot = const Offset(20, -10);
  late final Animation<Offset> first =
      Tween<Offset>(begin: firstDot, end: firstCommon).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.900, 0.99, curve: Curves.fastOutSlowIn),
    ),
  );
  late final Animation<Offset> second =
      Tween<Offset>(begin: firstCommon, end: secondDot).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.900, 0.99, curve: Curves.fastOutSlowIn),
    ),
  );
  // for animating center dot
  late final Animation<Offset> centerDot =
      Tween<Offset>(begin: Offset.zero, end: firstDot).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.8, 0.9, curve: Curves.fastOutSlowIn),
    ),
  );
// for  animating dot size
  late final Animation<double> dotSize =
      Tween<double>(begin: 8.0, end: 3.0).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.8, 0.9, curve: Curves.fastOutSlowIn),
    ),
  );
  // for  animating dot opacity
  late final Animation<double> dotOpacity =
      Tween<double>(begin: 0.0, end: 1.0).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.3, 0.3, curve: Curves.fastOutSlowIn),
    ),
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            controller.forward();
          },
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: width.value,
                    height: 110,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(80),
                      border: Border.all(color: Colors.blue, width: 5),
                    ),
                    child: Text(
                      "Download",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize.value,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: opacity.value,
                    child: const Icon(
                      Icons.arrow_downward,
                      size: 55,
                      color: Colors.black,
                    ),
                  ),
                  CustomPaint(
                    painter: ArcPaint(startAngle: -pi / 2, endAngle: arc.value),
                  ),
                  CustomPaint(
                    painter: LinerPaint(
                      first: first,
                      second: second,
                      firstDot: firstDot,
                      firstCommon: firstCommon,
                      secondDot: secondDot,
                    ),
                  ),
                  Opacity(
                    opacity: dotOpacity.value,
                    child: CustomPaint(
                      painter: DotPainter(
                        radius: dotSize.value,
                        offset: centerDot.value,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
