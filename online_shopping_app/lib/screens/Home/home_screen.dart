import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/product_details.dart';
import 'package:online_shopping_app/screens/Common/product_view.dart';
import 'package:online_shopping_app/screens/Home/slidable_image.dart';
import 'package:online_shopping_app/screens/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("images/menu.png"),
                    const CircleAvatar(
                      backgroundImage: AssetImage("images/profile.png"),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: "New collection\n",
                      style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white70,
                      ),
                      children: [
                        const TextSpan(
                          text: "with ",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: "15% ",
                          style: TextStyle(
                            fontSize: 35,
                            color: buttonColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const TextSpan(
                          text: "discount",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // for  image silidable and shop now button
                const SlidableImage(),
                const SizedBox(height: 50),
                const Text(
                  "Top sales",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 325,
                  child: ListView.builder(
                      itemCount: productItems.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, index) {
                        final products = productItems[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: ProductView(
                            imageUrl: products.imagePath,
                            price: products.price,
                            product: products,
                            title: products.name,
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
