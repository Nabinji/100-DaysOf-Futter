import 'package:flutter/material.dart';
import 'package:new_app_api/Screen/news_detail.dart';
import 'package:new_app_api/Services/services.dart';

import '../model/new_model.dart';

class SelectedCategoryNews extends StatefulWidget {
  String category;
  SelectedCategoryNews({super.key, required this.category});

  @override
  State<SelectedCategoryNews> createState() => _SelectedCategoryNewsState();
}

class _SelectedCategoryNewsState extends State<SelectedCategoryNews> {
  List<NewsModel> articles = [];
  bool isLoadin = true;
  getNews() async {
    CategoryNews news = CategoryNews();
    await news.getNews(widget.category);
    articles = news.dataStore;
    setState(() {
      isLoadin = false;
    });
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          widget.category,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: isLoadin
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: ListView.builder(
                itemCount: articles.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  final article = articles[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsDetail(newsModel: article),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              article.urlToImage!,
                              height: 250,
                              width: 400,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            article.title!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const Divider(thickness: 2),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
