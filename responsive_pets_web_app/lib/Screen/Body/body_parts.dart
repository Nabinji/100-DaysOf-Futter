import 'package:flutter/material.dart';
import 'package:responsive_pets_web_app/Screen/Body/pets_more_services.dart';
import 'package:responsive_pets_web_app/Screen/Body/popular_product.dart';
import 'package:responsive_pets_web_app/model/model.dart';

class BodyParts extends StatelessWidget {
  const BodyParts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child:Column(
              children: [
                const PetsMoreServices(),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Product",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Wrap(
                  spacing: 20,
                  children: 
                  
                    List.generate(
                      products.length,
                      (index) => PopularProduct(product: products[index]),
                    ),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
