
import 'package:flutter/material.dart';

class Movie {
  String title;
  String image;
  String director;
  String rating;
  String duration;
  String price;

  Movie({
    required this.title,
    required this.image,
    required this.director,
    required this.rating,
    required this.duration,
    required this.price,
  });
}

final List<Movie> movieItems = [
  Movie(
    title: 'Joker',
    image:
        'https://www.tallengestore.com/cdn/shop/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979',
    director: 'Direct by Todd Phillips',
    rating: '5.0',
    duration: "2h:42m",
    price: "250"
  ),
  Movie(
    title: 'Pathan',
    image:
        'https://www.tallengestore.com/cdn/shop/products/Pathan-ShahRukhKhan-BollywoodHindiMoviePoster_d4846edc-20de-497e-ab2c-07a53e52e268.jpg?v=1675251724',
    director: ' Direct by Siddharth Anand',
    rating: '5.0',
    duration: "2h:10m",
      price: "200"
  ),
  Movie(
    title: 'Big',
    image:
        'https://images.moviesanywhere.com/b0fa363f331f67556c771350ad0c3d42/688ee7ed-e823-4e4c-9b42-65aac0673d22.jpg',
    director: 'Direct by Penny Marshall',
    rating: '4.6',
    duration: "1h:45m",
    price: "100"
  ),
  Movie(
    title: 'Joker',
    image:
        'https://www.tallengestore.com/cdn/shop/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979',
    director: 'Direct byTodd Phillips',
    rating: '5.0',
    duration: "2h:42m",
    price: "50"
  ),
  Movie(
    title: 'KEVIN & PERRY',
    image:
        'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p25555_p_v10_aa.jpg',
    director: 'Direct by Ed Bye',
    rating: '4.0',
    duration: "1h:22m",
    price: "150"
  ),
];
List<String> time = [
  '8am',
  '11am',
  '1pm',
  '3pm',
  '6pm',
  '8pm'
];
List<Color> colors = [
  Colors.green,
  Colors.black,
  Colors.purple,
  Colors.amber,
  Colors.blueGrey,
  Colors.deepPurple,
  Colors.yellow,
];
