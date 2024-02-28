import 'package:flutter/material.dart';
import 'package:travel_app_ui/Model/model.dart';
import 'package:travel_app_ui/more_detail.dart';
import 'package:travel_app_ui/popular_cate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int seletedIndex = 0;
List<String> categoryList = [
  "Best nature",
  "Most viewed",
  "Recommend",
  "Newly discover",
  "Peace",
];

class _MyHomePageState extends State<MyHomePage> {
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
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFFFFBFB),
                            Color(0XFFF3ECEE),
                          ]),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(70))),
                  child: Stack(
                    children: [
                      Container(
                        height: 261,
                        width: double.infinity,
                        child: SafeArea(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "Images/grid.png",
                                      height: 30,
                                    ),
                                    Image.asset(
                                      "Images/search.png",
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                "Descover",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              // nature selection parts
                              natureSelection()
                            ],
                          ),
                        )),
                      ),
                      Positioned(
                        top: 245,
                        child: SizedBox(
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: locationItems.length,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              LocationDetail location = locationItems[index];
                              return GestureDetector(
                                // For navigating to second screen.
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MoreDetail(location: location),
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 30),
                                      child: Hero(
                                        tag: "hero",
                                        child: Container(
                                          height: 390,
                                          width: 260,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                location.image,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // slider for image ,name and location
                                    bestNatureSlider(location),

                                    Positioned(
                                        top: 40,
                                        left: 230,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(200)),
                                          child: const Icon(
                                            Icons.bookmark,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ))
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0XFFF3ECEE),
                        Color(0xFFFFFBFB),
                      ]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                // For bottom parts
                child: const PopularCategories(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned bestNatureSlider(LocationDetail location) {
    return Positioned(
      top: 320,
      left: 100,
      child: Column(
        children: [
          Text(
            location.name,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
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
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }

  Stack natureSelection() {
    return Stack(
      children: [
        const Positioned(
            bottom: -10,
            left: 45,
            child: Text(
              ".",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xFFA36C88)),
            )),
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: categoryList.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: seletedIndex == index
                        ? const Color(0xFFA36C88)
                        : const Color(0xFFE2CBD4),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
