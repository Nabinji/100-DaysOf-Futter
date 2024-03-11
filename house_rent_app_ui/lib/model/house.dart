class House {
  String name;
  String address;

  String imageUrl;
  String price;
  String description;

  House(
    this.name,
    this.address,
    this.imageUrl,
    this.price,
    this.description,
  );
}

// for cayegory
final categoryList = [
  'Top Recommended',
  'Near you',
  'Agency Recommended',
];

final recommendedList = [
  House(
    'The Moon House',
    'P455, Chhatak, Sylhet',
    'assets/images/house01.jpeg',
    '\$4455',
    'Enim veniam dolor sint ipsum culpa magna dolore incialaunt laborum excepteu...'
  ),
  House(
    'The Dream House',
    'P133, Washington, D.C ',
    'assets/images/house02.jpeg',
    '\$5500',
    'Washington, D.C,formally the District of Columbia and commonly called Washington.'
  ),
   House(
    'Favorite House',
    'P33, Japan',
    'assets/images/house03.png',
    '\$1010',
    "A hotel is an establishment that provides paid lodging on a short-term basis. Facilities provided inside a hotel room may range from a modest-quality ...",
  )
];
