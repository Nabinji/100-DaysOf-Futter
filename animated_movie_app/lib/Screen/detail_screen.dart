import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../Model/model.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: size.height * 0.61,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
              ],
              background: Hero(
                tag: widget.movie.title,
                transitionOnUserGestures: true,
                child: Image.network(
                  widget.movie.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: FadeInUp(
                duration: const Duration(milliseconds: 500),
                child: Transform.translate(
                  offset: const Offset(0, 1),
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 65,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    color: Colors.white,
                    height: size.height * 0.85,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeInUp(
                                  child: Text(
                                    widget.movie.title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                FadeInUp(
                                    delay: const Duration(milliseconds: 200),
                                    child: Text(
                                      widget.movie.director,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54,
                                      ),
                                    ))
                              ],
                            ),
                            FadeInUp(
                              child: Text(
                                " Ticket: \$${widget.movie.price}.00",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        FadeInUp(
                          delay: const Duration(milliseconds: 500),
                          child: Text(
                            " ${widget.movie.title} movie is a motion picture, moving picture, picture, photoplay work of visual art that simulates experiences and communicates ideas, stories, feelings, beauty, or atmosphere ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        FadeInUp(
                          delay: const Duration(milliseconds: 500),
                          child: const Text(
                            " Movies Shows Time",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: time.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedColor = index;
                                  });
                                },
                                child: FadeInUp(
                                  delay: Duration(
                                    milliseconds: (index * 100),
                                  ),
                                  child: AnimatedContainer(
                                    duration: const Duration(microseconds: 400),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: selectedColor == index ? 3 : 0,
                                          color: selectedColor == index
                                              ? Colors.blue
                                              : Colors.transparent,
                                        ),
                                        shape: BoxShape.circle,
                                        color: selectedColor == index
                                            ? colors[index]
                                            : colors[index].withOpacity(0.5)),
                                    height: 60,
                                    width: 60,
                                    child: Center(
                                      child: Text(
                                        time[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: selectedColor == index
                                              ? Colors.white
                                              : Colors.black54,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 140, vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              "Check Out",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                         const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
