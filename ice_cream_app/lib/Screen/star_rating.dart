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
      size: 22,
      color: fill ? Colors.deepOrange : Colors.black45,
    );
  }
// push the video and see it you can understand easily
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
