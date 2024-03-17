import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_cource_app/Detail/course_detail.dart';
import 'package:online_cource_app/Model/model.dart.dart';
import 'package:online_cource_app/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: ListView(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        children: [
          const Text(
            "Hey Alex,",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Find a course you want to learn",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          // for search bar
          searchBar(),
          const SizedBox(height: 35),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: onlineCourceOne.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CoursesDetail(
                                imgDetail: onlineCourceOne[index]['img_detail'],
                                title: onlineCourceOne[index]['title'],
                                price: onlineCourceOne[index]['price'],
                              ),
                            ),
                          );
                        },
                        child: availableCourses(context, index),
                      );
                    }),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: onlineCourceTwo.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                       onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CoursesDetail(
                                imgDetail: onlineCourceTwo[index]['img_detail'],
                                title: onlineCourceTwo[index]['title'],
                                price: onlineCourceTwo[index]['price'],
                              ),
                            ),
                          );
                        },
                        child: availableCoursesTwo(context, index),
                      );
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding availableCourses(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 60 / 2,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    onlineCourceOne[index]['img'],
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 18, left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  onlineCourceOne[index]['title'],
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  onlineCourceOne[index]['courses'],
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding availableCoursesTwo(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 60 / 2,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    onlineCourceTwo[index]['img'],
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 18, left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  onlineCourceTwo[index]['title'],
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  onlineCourceTwo[index]['courses'],
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search for anything",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.25),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black54,
                )),
          ),
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            "images/burger_icon.svg",
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                    "https://www.simplilearn.com/ice9/free_resources_article_thumb/how_to_become_A_programmer.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
