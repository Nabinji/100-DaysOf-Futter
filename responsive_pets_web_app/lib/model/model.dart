class Product {
  String image;
  String title;

  int rating;

  Product({
    required this.rating,
    required this.image,
    required this.title,
  });
}

List<Product> products = [
  Product(
    rating: 5,
    title: "Dog",
    image: "images/dogs.png",
  ),
  Product(
    rating: 4,
    title: "Cat",
    image: "images/cats.png",
  ),
  Product(
    rating: 5,
    title: "Bird",
    image: "images/bird.png",
  ),
  Product(
    rating: 4,
    title: "Fish",
    image: "images/fishs.png",
  ),

];
