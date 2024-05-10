import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductCategoriesScreen extends StatefulWidget {
  const ProductCategoriesScreen({super.key});

  @override
  _ProductCategoriesScreenState createState() =>
      _ProductCategoriesScreenState();
}

class _ProductCategoriesScreenState extends State<ProductCategoriesScreen> {
  List<String> myCategories = [];
  List<dynamic> products = [];
  bool isLoading = true;
  String selectedCategory = "All";

  @override
  void initState() {
    super.initState();
    fetchCategories();
    fetchCategorieProducts("All");
  }

// for fetch category list
  Future<void> fetchCategories() async {
    Uri url = Uri.parse("https://dummyjson.com/products");
    try {
      final response = await http.get(url);
      final List<dynamic> data = json.decode(response.body)[
          "products"]; // name must be same from api otherwis you got error
      final List<String> fetchdeCategories = [
        "All"
      ]; // first we display all the api data in all category section

      for (var prdouct in data) {
        final String category = prdouct["category"];
        if (!fetchdeCategories.contains(category)) {
          fetchdeCategories.add(category);
        }
      }
      setState(() {
        isLoading = false;
        myCategories = fetchdeCategories;
      });
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
      });
    }
  }

  // for fetchin category items
  void fetchCategorieProducts(String category) async {
    Uri url = Uri.parse("https://dummyjson.com/products");
    try {
      final response = await http.get(url);
      final List<dynamic> data = json.decode(response.body)[
          "products"]; // name must be same from api otherwis you got error
      final List<dynamic> categorieProducts = [];

      for (var prdouct in data) {
        final String productCategory = prdouct["category"];
        if (category == "All" || productCategory == category) {
          categorieProducts.add(prdouct);
        }
      }
      setState(() {
        selectedCategory = category;
        products = categorieProducts;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Separate Category From API"),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                      itemCount: myCategories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final category = myCategories[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              fetchCategorieProducts(category);
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: category == selectedCategory
                                    ? Colors.blue
                                    : Colors.black12,
                              ),
                              child: Center(
                                  child: Text(
                                category,
                                style: TextStyle(
                                    fontWeight: category == selectedCategory
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 18),
                              )),
                            ),
                          ),
                        );
                      }),
                ),
                // now we make, when user click on all it show the all item from api, and if user click on laptops only the laptops category is shown,
                Expanded(
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ListTile(
                        leading: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                  product["thumbnail"],
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        title: Text(
                          product["title"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text("\$${product['price']}"),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
// In our api there is different category items in today video we have dispay the same category items in same section.
