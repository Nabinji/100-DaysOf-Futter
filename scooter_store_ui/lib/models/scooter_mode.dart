class Scooter {
  String name;
  String imageUrl;
  Scooter({
    required this.name,
    required this.imageUrl,
  });
}

List<Scooter> listScooter = [
  Scooter(
    name: 'Fold in 1 second',
    imageUrl: 'images/image2.png',
  ),
  Scooter(
    name: 'Up to 190 cm',
    imageUrl: 'images/image4.png',
  ),
  Scooter(
    name: 'Front Tyre',
    imageUrl: 'images/image3.png',
  )
];
