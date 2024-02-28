import 'package:flutter/material.dart';
import 'package:travel_app_ui/Model/model.dart';

class MoreDetail extends StatelessWidget {
  const MoreDetail({super.key, required this.location});
  final LocationDetail location;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.25,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(location.image), fit: BoxFit.fill),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(70))),
                  child: Stack(
                    children: [
                      // for name address and location icon,
                      Positioned(
                        top: 320,
                        left: 150,
                        child: Column(
                          children: [
                            Text(
                              location.name,
                              style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                Text(
                                  location.address,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // For back button
                      Positioned(
                        top: 50,
                        left: 5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // for bookmark icon
                      Positioned(
                        top: 50,
                        right: 15,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(200)),
                          child: GestureDetector(
                            child: const Icon(
                              Icons.bookmark,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                child: RotatedBox(
                    quarterTurns: 2,
                    child: Image.asset(
                      location.image,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // For rating , temprature adn date
                      ratingandMore(),
                      const SizedBox(
                        height: 85,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        location.description,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 231, 178, 200),
                        ),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
// For last ,bottom parts
                      Row(
                        children: [
                          Text(
                            "\$ ${location.price}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Container(
                            height: 65,
                            width: 170,
                            decoration: BoxDecoration(
                                color: const Color(0xFFD38CAB),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 33, top: 19),
                              child: Text("Book Now",  style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold,),),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 500,
              left: 30,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("Images/as.jpeg"),
              ),
            ),
            const Positioned(
              top: 500,
              left: 55,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("Images/aa.png"),
              ),
            ),
            const Positioned(
              top: 500,
              left: 80,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("Images/ab.jpeg"),
              ),
            ),
            const Positioned(
              top: 500,
              left: 110,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFD38CAB),
                child: Text(
                  "28+",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            const Positioned(
              left: 165,
              top: 505,
              child: Text(
                "Recommended",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding ratingandMore() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.amber[900],
            size: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            location.rating.toString(),
            style: const TextStyle(fontSize: 20, color: Color(0xFFB07C97)),
          ),
          const SizedBox(
            width: 30,
          ),
          const Icon(
            Icons.cloud,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "${location.temperature}°C",
            style: const TextStyle(fontSize: 20, color: Colors.blue),
          ),
          const SizedBox(
            width: 30,
          ),
          const Icon(Icons.watch_later_rounded, color: Color(0xFFB07C97)),
          const SizedBox(
            width: 7,
          ),
          Text(
            "${location.time} Day",
            style: const TextStyle(fontSize: 20, color: Color(0xFFB07C97)),
          )
        ],
      ),
    );
  }
}
