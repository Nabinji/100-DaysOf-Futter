import 'package:flutter/material.dart';

import 'curve_image_side.dart';

class ProductDetailImages extends StatelessWidget {
  const ProductDetailImages({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: CurveImageSide(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: Image(
              fit: BoxFit.cover,
              height: size.height *0.6,
              width: size.width,
                image: AssetImage(
              imageUrl,
              
            )),
          ),
        ),
      ),
    );
  }
}
