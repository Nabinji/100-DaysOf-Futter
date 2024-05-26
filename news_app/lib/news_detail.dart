import 'package:flutter/material.dart';
import 'package:news_app/Model/news_model.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({super.key, required this.news});

  final Yournews news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color.fromARGB(255, 73, 98, 223),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "${news.date} . ${news.newsCategories.toLowerCase()}",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  news.newsTitle,
                  style: const TextStyle(
                    fontSize: 33,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(news.newsImage),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  news.description,
                  style: const TextStyle(
                    fontSize: 21,
                    height: 1.6,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "So what's changed?",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  news.description,
                  style: const TextStyle(
                    fontSize: 21,
                    height: 1.6,
                  ),
                ),
                Text(
                  news.description,
                  style: const TextStyle(
                    fontSize: 21,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 75,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(spreadRadius: 1, blurRadius: 2, offset: Offset(0, 3))
            ],
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: const Color(0xFFDDEAFF),
                    borderRadius: BorderRadius.circular(60)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 13,
                    ),
                    Image.asset(
                      "Images/chat.png",
                      height: 45,
                    ),
                    const Text(
                      "Add a comment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF277AFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                  CircleAvatar(
              radius: 25,
              backgroundColor: const Color(0xFFEDE3FA),
              child: Image.asset(
                "Images/icon.png",
                height: 32,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: const Color(0xFFFFF7E2),
              child: Image.asset(
                "Images/star.png",
                height: 32,
              ),
            ),
         const CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFFD9F9F5),
              child:Icon(Icons.more_vert,size: 35,color: Color(0xFF00D9BC),)
            ),
            SizedBox(width: 15,)
          ],
        ),
      ),
    );
  }
}
