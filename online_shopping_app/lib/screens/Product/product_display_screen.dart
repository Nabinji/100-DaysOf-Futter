import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/product_details.dart';
import 'package:online_shopping_app/screens/Common/product_view.dart';
import 'package:online_shopping_app/screens/Product/sort_by.dart';
import 'package:online_shopping_app/screens/constants.dart';

class ProductDisplayScreen extends StatelessWidget {
  const ProductDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          "Top Sale",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 8,
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: buttonColor,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const SortBy(),
              const SizedBox(height: 20),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.64,
                     crossAxisSpacing: 10,
                      ),
                  itemCount: productItems.length,
                  itemBuilder: (context, index) {
                    final product = productItems[index];
                    return Transform.translate(
                      offset: Offset(0, index.isOdd ? 28 : 0),
                      child: ProductView(
                        imageUrl: product.imagePath,
                        price: product.price,
                        product: product,
                        title: product.name,
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
