class Restaurant {
  String name;
  String imageUrl;
  String rating;
  String totalReview;
  String level;
  String description2;
  String description1;
  Restaurant({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.totalReview,
    required this.description2,
    required this.description1,
    required this.level,
  });
}

List<Restaurant> restaurantItems = [
  Restaurant(
    rating: '4.8',
    name: "Joe's Linder",
    imageUrl:
        'https://images.cookforyourlife.org/wp-content/uploads/2019/10/healthy-diet-plate.jpg',
    level: "S. Oxford 13th",
    totalReview: "123",
    description2: "Vegetables",
    description1:
        "At least halt of the grains vou eat should be whole grains. whole",
  ),
  Restaurant(
    rating: '4.5',
    name: "Mama's brunch",
    imageUrl: 'https://cdn.mos.cms.futurecdn.net/t4LzQQL75En7bRD7iyxNWd.jpg',
    totalReview: "98",
    level: "S. Gulier 6th",
    description2: "Fruits",
    description1:
        "At least halt of the grains vou eat should be whole grains. whole",
  ),
  Restaurant(
    rating: '5.0',
    name: "Dark table",
    totalReview: "999",
    imageUrl:
        'https://i.pinimg.com/originals/1a/ce/34/1ace3490e2f113e4354a3001bf915dd9.jpg',
    level: "S. Gulier 6th",
    description2: "Juice",
    description1:
        "As the MyPlate icon shows, the five food groups are Fruits, Vegetables, ",
  ),
  Restaurant(
    rating: '4.2',
    name: "Balanced Diet",
    totalReview: "99",
    imageUrl:
        'https://www.alimentarium.org/sites/default/files/media/image/2017-04/EMAG_balanced_meal_shutterstock_54369673_TOP_0_0.jpg',
    level: "S. Gulier 10th",
    description2: "Balanced Diet",
    description1:
        " eating pattern with all five groups as key building blocks, plus oils.",
  ),
];
List<String> categoryList = [
  "healthy",
  "italian",
  "mexican",
  "asian",
  "chinese",
  "haitian",
];
