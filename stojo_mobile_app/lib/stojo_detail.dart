import 'package:flutter/material.dart';
import 'package:stojo_mobile_app/Model/data.dart';

class DetailStojo extends StatelessWidget {
  const DetailStojo({super.key, required this.stojo});

  final StojoDetail stojo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: stojo.color,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    decoration: BoxDecoration(
                        color: stojo.color,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50))),
                    child: Row(
                      children: [
                        // for image
                        Expanded(
                          flex: 6,
                          child: Center(
                            child: Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: CircleAvatar(
                                    radius: 130,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 40, top: 30),
                                  child: Image.asset(
                                    stojo.image,
                                    height: 350,
                                    width: 190,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: stojo.sideColor,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "Images/shopping bag.png",
                                    color: Colors.white,
                                    width: 100,
                                    height: 100,
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Column(
                                    children: [
                                      const CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.black,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 8,
                                          backgroundColor: stojo.color,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.green,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.pink,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // for back button
                Positioned(
                  left: 10,
                  top: MediaQuery.of(context).padding.top,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stojo.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black45,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black45,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black45,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dishwasher safe",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "No phthalates, leads or glues",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "BPA-free, polypropylene lid and heat sleeve",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Text(
                "Size",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            Container(
              height: 110,
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        padding: EdgeInsets.all(7.0 * (index + 2)),
                        width: 100,
                        decoration: BoxDecoration(
                            color: stojo.color.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(stojo.image),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "\$${stojo.price}.00",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 35),
                  )),
                  Expanded(
                      child: Container(
                    alignment: Alignment.center,
                    height: 67,
                    decoration: BoxDecoration(
                      color: stojo.sideColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
