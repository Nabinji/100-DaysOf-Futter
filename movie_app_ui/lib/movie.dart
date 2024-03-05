import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_ui/Model/model.dart';

class MovieDisplay extends StatefulWidget {
  const MovieDisplay({super.key});

  @override
  State<MovieDisplay> createState() => _MovieDisplayState();
}

int current = 0;

class _MovieDisplayState extends State<MovieDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // For background image
            Image.network(
              movies[current]['Image'],
              fit: BoxFit.cover,
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.33,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.grey.shade50.withOpacity(1),
                        Colors.grey.shade50.withOpacity(1),
                        Colors.grey.shade50.withOpacity(1),
                        Colors.grey.shade100.withOpacity(1),
                        Colors.grey.shade100.withOpacity(0.0),
                        Colors.grey.shade100.withOpacity(0.0),
                        Colors.grey.shade100.withOpacity(0.0),
                        Colors.grey.shade100.withOpacity(0.0),
                      ])),
                )),

            Positioned(
              bottom: 5,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 550,
                  viewportFraction: 0.7,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        current = index;
                      },
                    );
                  },
                ),
                items: movies.map(
                  (movie) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 350,
                                    width: MediaQuery.of(context).size.width *
                                        0.55,
                                    margin: const EdgeInsets.only(top: 20),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.network(
                                      movie['Image'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  // For movei title
                                  Text(
                                    movie['Title'],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  // for movei director
                                  Text(
                                    movie['Director'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  AnimatedOpacity(
                                    duration: const Duration(milliseconds: 1000),
                                    // text is shown 1000 milliseconds later after scroll
                                    opacity: current == movies.indexOf(movie)
                                        ? 1.0
                                        : 0.0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                movie['rating'],
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.access_time,
                                                color: Colors.black45,
                                                size: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                movie['duration'],
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.21,
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.play_circle,
                                                  color: Colors.black,
                                                  size: 20,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "Watch",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
