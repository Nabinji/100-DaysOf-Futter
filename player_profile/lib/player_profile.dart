import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:player_profile/Model/model.dart';

class PlayerProfile extends StatefulWidget {
  const PlayerProfile({super.key});

  @override
  PalyersState createState() => PalyersState();
}

class PalyersState extends State<PlayerProfile> with TickerProviderStateMixin {
  // now we add some animation
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 5), vsync: this)
        ..repeat(reverse: true);

  late final Animation<double> animation =
      Tween<double>(begin: 1, end: 1.2) // you can adjust it
          .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

  void despose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: (context, index) {
        return Stack(
          children: [
            // For image
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ScaleTransition(
                scale: animation,
                child: Image.network(
                  players[index]['image'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.1),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // new we can animate the text
                    FadeInDown(
                      duration: const Duration(milliseconds: 500),
                      child: Text(
                        players[index]['name'],
                        style: const TextStyle(
                            fontSize: 42,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // for description
                    FadeInDown(
                       duration: const Duration(milliseconds: 750),
                      delay: const Duration(milliseconds: 100),
                      child: Text(
                        players[index]['about'],
                        style: const TextStyle(
                            fontSize: 18,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Row(
                        children: [
                          FadeInRight(
                               duration: const Duration(milliseconds: 750),
                            delay: const Duration(milliseconds: 100),
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  players[index]['gamePlay'],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          FadeInLeft(
                              duration: const Duration(milliseconds: 750),
                            delay: const Duration(milliseconds: 100),
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  players[index]['totalGoal'],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInLeft(
                        duration: const Duration(milliseconds: 750),
                      delay: const Duration(milliseconds: 100),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 45,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "More Detail",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
