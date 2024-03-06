import 'package:fitness_app_ui/Model/fitness_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.fitness});
  final FitnessDetail fitness;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // for image and more
            displayImage(context),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                children: [
                  Text(
                    fitness.instructor,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(98, 91, 80, 41),
                    radius: 22,
                    child: Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                children: [
                  Text(
                    "${fitness.name} coach  . ",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    "3 more lessons ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 104, 181, 244),
                      Color.fromARGB(255, 116, 69, 245),
                      Color.fromARGB(255, 1216, 65, 243),
                    ])),
                child: const Center(
                  child: Text(
                    "Let's Go",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(66, 175, 171, 171),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle,
                      color: Colors.white,
                    ),
                    Text(
                      "Preview",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ],
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // for description
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Text(
                fitness.description,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container displayImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.47,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: fitness.color,
        image: DecorationImage(
            image: AssetImage(
              fitness.image,
            ),
            fit: BoxFit.fill),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 50,
              left: 30,
              child: Text(
                fitness.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 45,
                ),
              )),
          Positioned(
            bottom: 55,
            right: 30,
            child: Container(
              height: 45,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.play_arrow),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${fitness.time} min",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
