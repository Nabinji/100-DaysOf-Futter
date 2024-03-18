import 'package:ecommerce_shop_app/models/data_model.dart';
import 'package:ecommerce_shop_app/screens/Detail/product_detail_image.dart';
import 'package:ecommerce_shop_app/screens/Detail/product_item_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.products});
  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // for product detail images.
            ProductDetailImages(imageUrl: products.imageUrl),
            // for product item more detail
            ProductItemsDetail(product: products),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    "images/menu.png",
                    color: Colors.white,
                    height: 25,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
