import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final DocumentSnapshot<Object?> documentSnapshot;
  const DetailScreen({super.key, required this.documentSnapshot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag:  documentSnapshot['imageurl'],
                child: Image.network(
                  documentSnapshot['imageurl'],
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const BackButton(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  documentSnapshot['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$${documentSnapshot['price']}",
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Icon(
                      Icons.star,
                      color: Colors.amber[900],
                    ),
                    Text(
                      documentSnapshot['rating'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "${documentSnapshot['review']}(review)",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  documentSnapshot['description'],
                  maxLines: 7,
                  style: const TextStyle(
                      fontSize: 20, overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 2,
                          color: documentSnapshot['isfavorite'] == true
                              ? Colors.red
                              : Colors.black,
                        ),
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 45,
                        color: documentSnapshot['isfavorite'] == true
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
