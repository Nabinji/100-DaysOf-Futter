import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key, required this.rating});
  final int rating;

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  Widget star(bool fill) {
    return Icon(
      Icons.star,
      size: 20,
      color: fill ? Colors.deepOrange : Colors.white54,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if (index < (widget.rating).round()) {
          return star(true);
        } else {
          return star(false);
        }
      }),
    );
  }
}
