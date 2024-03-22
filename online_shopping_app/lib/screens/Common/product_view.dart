import 'package:flutter/material.dart';
import 'package:online_shopping_app/models/product_details.dart';

class ProductView extends StatelessWidget {
  final String imageUrl, title, price;
  final ProductDetails product;
  final bool? isFavorite;

  const ProductView({
    super.key,
    required this.imageUrl,
    this.isFavorite = false,
    required this.price,
    required this.product,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 240,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                product.isFav == true
                    ? Icons.favorite_rounded
                    : Icons.favorite_border,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text.rich(
          TextSpan(
              text: "$title\n",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: "\$$price",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
