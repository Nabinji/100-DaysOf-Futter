class LocationDetail {
  String image;
  String name;
  String address;
  int price;
  double rating;
  int temperature;
  int time;
  String description;

  LocationDetail({
    required this.image,
    required this.name,
    required this.address,
    required this.price,
    required this.description,
    required this.rating,
    required this.temperature,
    required this.time,
  });
}

List<LocationDetail> locationItems = [
  LocationDetail(
    image: "Images/theway.png",
    name: 'The Way',
    address: 'Spain',
    price: 1350,
    rating: 5.0,
    temperature: 19,
    time:5 ,
    description:
        '"The Way" typically refers to the Camino de Santiago, a network of pilgrimage routes leading to the shrine of the apostle Saint James the Great in the Cathedral of Santiago de Compostela in Galicia, northwest Spain.',
  ),
  LocationDetail(
    image: "Images/thebridge.png",
    name: 'Loygavegur',
    address: 'Iceland',
    price: 2350,
      rating: 4.9,
    temperature: 1,
    time:15 ,
    description:
        "Iceland's nature is renowned for its raw and untamed beauty, characterized by dramatic landscapes shaped by volcanic activity, glaciers, geysers, and cascading waterfalls,if you want to enjoy more then you need to visit this all place.",
  ),
  LocationDetail(
    image: "Images/sunrise.png",
    name: 'Oyo Lakes',
    address: 'Croatia',
    price: 3250,
      rating: 5.0,
    temperature: 22,
    time:9 ,
    description:
        'Oyo Lake, nestled in a picturesque setting, captivates visitors with its tranquil waters and surrounding lush landscapes. It serves as a haven for relaxation and outdoor activities, offering opportunities for boating,and peaceful walks along its shores',
  ),
  LocationDetail(
    image: "Images/sunrises.png",
    name: 'Sun Rise',
    address: 'UK',
    price: 3500,
      rating: 4.0,
    temperature: 12,
    time:6 ,
    description:
        "At dawn, the Eiffel Tower in Paris becomes a spectacle of beauty as the sun rises behind its iconic silhouette, casting a warm glow over the cityscape.If you want to enjoy more then you need to visit this all place.",
  ),
  LocationDetail(
    image: "Images/eiffel_tower.png",
    name: 'Effiel Tower',
    address: 'Paris France',
    price: 3350,
      rating: 4.5,
    temperature: 19,
    time:2 ,
    description:
        ' This enchanting moment draws crowds to witness the breathtaking scene and symbolizes the timeless allure and romantic charm of the French capital, making it an unforgettable experience for visitors from around the world.',
  ),
];
