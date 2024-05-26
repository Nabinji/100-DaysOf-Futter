import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {
  const Profile2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/profile2.png",
            fit: BoxFit.cover,
            height: size.height / 1.2,
            width: size.width,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 520,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Container(
                        height: 8,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 14,
                    ),
                    child: Row(
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "images/profile2.png",
                              ),
                            ),
                            SizedBox(width: 13),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Derrrick Estrada",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  "Flutter Developer",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black45),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          child: const Text(
                            "Follow",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(color: Colors.black12),
                  SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        friendAndMore("FRIENDS", "2318"),
                        friendAndMore("FOLLOWING", "364"),
                        friendAndMore("FOLLOWER", "175"),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.black12),
                  const Text(
                    "Friends",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (( BuildContext context, int index) {
                      return Container(
                        height: 65,
                        width: 60,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(
                                "images/friend$index.png",
                              ),fit: BoxFit.cover
                            )),
                      );
                    })),
                  ),
                  const SizedBox(height: 8),
                   const Text(
                    "Friends",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                    SizedBox(
                    height: 160,
                    child: ListView.builder(
                        padding: const EdgeInsets.only(top: 5),
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: ((BuildContext context, int index) {
                          return Container(
                            height: 160,
                            width: 130,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "images/image$index.png",
                                    ),
                                    fit: BoxFit.cover)),
                          );
                        })),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  SizedBox friendAndMore(title, number) {
    return SizedBox(
      width: 110,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black26),
          ),
          Text(
            number,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
