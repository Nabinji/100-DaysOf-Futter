import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/Model/news_model.dart';
import 'package:news_app/news_detail.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Explore",
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              // for search bar
              searchabar(),
              const SizedBox(
                height: 20,
              ),
              forImages(context),
              const SizedBox(
                height: 10,
              ),

              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      "Hot topic",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: topicItems
                        .sublist(0, 3)
                        .length, // we need only  first three items from model
                    itemBuilder: (context, index) {
                      final topic = topicItems.sublist(0, 3)[index];
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 55,
                        width: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            color: topic.color,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Image.asset(
                              topic.image,
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              topic.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: topicItems
                      .sublist(3)
                      .length, // we need only remaining  items from model
                  itemBuilder: (context, index) {
                    final topic = topicItems.sublist(3)[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 55,
                      width: MediaQuery.of(context).size.width / 3.2,
                      decoration: BoxDecoration(
                          color: topic.color,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Image.asset(
                            topic.image,
                            height: 45,
                            width: 45,
                          ),
                          Text(
                            topic.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Your news",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: newsItems.length,
                    itemBuilder: (context, index) {
                      final news = newsItems[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailNews(news: news)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, right: 20),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 1,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Container(
                                    height: 100,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(news.image),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        news.newsTitle,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  news.color.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 2),
                                            child: Text(
                                              news.newsCategories,
                                              style: TextStyle(
                                                color: news.color,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 145),
                                          child: Text(
                                            news.time,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding forImages(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4.9,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Image.asset(
                "Images/c..png",
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width / 2.1,
              ),
            ),
            Positioned(
                right: 0,
                child: Image.asset(
                  "Images/d.png",
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: MediaQuery.of(context).size.width / 2.5,
                ))
          ],
        ),
      ),
    );
  }

  Padding searchabar() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 151, 146, 146),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black45,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
