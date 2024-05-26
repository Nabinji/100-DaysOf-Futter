import 'package:education_app_ui/Utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "Images/menu1.png",
                    height: 40,
                    width: 40,
                  ),
                  Image.asset(
                    "Images/search1.png",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Hi Julia",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "Images/hand.png",
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Today is a good day\nto for learn someting new!",
                        style: TextStyle(color: Colors.black54, fontSize: 17),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "Images/profile.png",
                    height: 110,
                    width: 110,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: primaryColor,
                    child: const SizedBox(
                      height: 50,
                      width: 90,
                      child: Center(
                        child: Text(
                          "Top",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    " Design",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text("Marketing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Image.asset(
                    "Images/filter.png",
                    height: 40,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 595,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white,
                    Color.fromARGB(255, 233, 236, 246)
                  ])),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: displayImage(250, "Images/graphic design.png"),
                  ),
                  Positioned(
                    right: 0,
                    child: displayImage(220, "Images/programming.png"),
                  ),
                  Positioned(
                    left: 0,
                    top: 260,
                    child: displayImage(220, "Images/finance1.png"),
                  ),
                  Positioned(
                    right: 0,
                    top: 230,
                    child: displayImage(250, "Images/uidesign.png"),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 103,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  color: primaryColor,
                                  child: const SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      Icons.home,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.watch_later,
                                  color: Colors.black45,
                                  size: 35,
                                ),
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.black45,
                                  size: 35,
                                ),
                                const Icon(
                                  Icons.person_2,
                                  color: Colors.black45,
                                  size: 35,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(200),
                                  ),
                                  height: 12,
                                  width: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding displayImage(double heigh, image) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Expanded(
          child: SizedBox(
        height: heigh,
        width: 193,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      )),
    );
  }
}
