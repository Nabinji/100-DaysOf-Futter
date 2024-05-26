import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SwipeableButtonAnimation extends StatefulWidget {
  const SwipeableButtonAnimation({super.key});

  @override
  State<SwipeableButtonAnimation> createState() =>
      _SwipeableButtonAnimationState();
}

class _SwipeableButtonAnimationState extends State<SwipeableButtonAnimation> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Center(
          child: SwipeableButtonView(
            onFinish: () async {
              Navigator.push(
                context,
                PageTransition(
                  child: const CompletedScreen(),
                  type: PageTransitionType.fade,
                ),
              );
            },
            onWaitingProcess: () {
              Future.delayed(const Duration(seconds: 2), () async {
                setState(() {
                  isFinished = true;
                });
              });
            },
            isFinished: isFinished,
            activeColor: Colors.green,
            buttonWidget: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
            buttonText: "  Slider to Pay",
            buttontextstyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // lottie file is in description
            Lottie.network("https://lottie.host/607f2d7f-b29f-401d-b304-776f1024ad5d/y0DTJfrS1Q.json",height: 100),
            const Text(
              "Payment Completed",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
