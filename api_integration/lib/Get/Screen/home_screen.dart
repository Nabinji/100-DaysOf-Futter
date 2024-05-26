import 'package:api_integration/Get/Model/product_get_model.dart';
import 'package:api_integration/Get/Screen/product_detail.dart';
import 'package:api_integration/Get/Services/product_get_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> productModel = [];
  bool isLoaded = false;
  getmyProducr() {
    isLoaded = true;
    getProducts().then((value) {
      setState(() {
        productModel = value;
        isLoaded = false;
      });
    });
  }

  @override
  void initState() {
    getmyProducr();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Comerce App From Get API"),
      ),
      body: isLoaded
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              shrinkWrap: true,
              itemCount: productModel.length,
              itemBuilder: (context, index) {
                final apiProduct = productModel[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(
                            product: apiProduct,
                          ),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: apiProduct.images[0],
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  apiProduct.thumbnail,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  apiProduct.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$${apiProduct.price.toString()}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Text(apiProduct.rating.toString())
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
