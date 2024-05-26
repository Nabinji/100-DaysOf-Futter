import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/Common/rating.dart';
import 'package:gaming_shop_app_ui/constants.dart';
import 'package:gaming_shop_app_ui/model/product.dart';

import 'image_size.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.game});
  final Product game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      body: Column(
        children: [
          // for detail image
          detailImage(),
          // for image size
          const ImageSize(),
          // for name star and description,
          itemsDetails(),
          //for add to cart and price
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${game.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: kPrimaryTextColor,
                  ),
                ),
                Container(
                  height: 80,
                  width: 200,
                  padding:
                      const EdgeInsets.symmetric(vertical: 28, horizontal: 18),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: const Center(
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container itemsDetails() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            game.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: kPrimaryTextColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //for rating
          const Rating(),
          Text(
            "Unleash your color with the arrival of four new stvles. Each wireless controller comes loaded with the same DUALSHOCK@4 features including touch paa, motion sensors and punt-in rechargedole batterv.",
            style: TextStyle(
              fontSize: 18,
              color: kSecondTextColor,
            ),
          )
        ],
      ),
    );
  }

  SizedBox detailImage() {
    return SizedBox(
      height: 280,
      child: Stack(
        children: [
          Container(
            height: 200,
            color: kSelectCardBackgroundColor,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Hero(
                  tag: game.imagePic,
                  child: Image.asset(
                    game.imagePic,
                    height: 220,
                    width: 330,
                  ),
                ),
              ))
        ],
      ),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: kSelectCardBackgroundColor,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}
