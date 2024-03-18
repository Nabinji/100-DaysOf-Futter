import 'package:ecommerce_shop_app/models/data_model.dart';
import 'package:ecommerce_shop_app/screens/Detail/star_rating.dart';
import 'package:flutter/material.dart';

class ProductItemsDetail extends StatelessWidget {
  const ProductItemsDetail({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.52,
      child: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 52,
                            color: Colors.black),
                      ),
                      Text(
                        product.manufacturer,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black38),
                      )
                    ],
                  ),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1,
                        fontSize: 20,
                        color: Colors.deepOrange),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '${product.rating}.0',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.deepOrange),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  StarRating(rating: product.rating),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "fabric color",
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      ),
                      Text(
                        product.fabricColor,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "style",
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      ),
                      Text(
                        product.style,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "made in",
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      ),
                      Text(
                        product.madeIn,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                product.description,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    fontSize: 18,
                    color: Colors.black45),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.64,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        "Pay",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.18,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.favorite_border_rounded,
                      size: 30,
                      color: Colors.black38,
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
