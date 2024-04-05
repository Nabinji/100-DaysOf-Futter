import 'package:flutter/material.dart';

class Profile1 extends StatelessWidget {
  const Profile1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: size.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage("images/profile1.png"),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Derrrick Estrada",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 70,
                      color: Colors.black.withOpacity(0.3),
                      child: Row(
                        children: [
                          const Spacer(),
                          friendAndMore("FRIENDS", "2318"),
                          friendAndMore("FOLLOWING", "364"),
                          friendAndMore("FOLLOWER", "175"),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Material(
                  elevation: 3,
                  shadowColor: Colors.black26,
                  child: SizedBox(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.web_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.image,
                          size: 30,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.play_circle,
                          size: 30,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.54,
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  children: List.generate(9, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/image$index.png"),
                            fit: BoxFit.cover),
                      ),
                    );
                  }),
                ),
              )
            ],
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
                color: Colors.white60),
          ),
          Text(
            number,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          )
        ],
      ),
    );
  }
}
