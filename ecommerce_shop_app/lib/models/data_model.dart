class ProductModel {
  String name;
  String imageUrl;
  int price;
  String manufacturer;
  String description;
  String fabricColor;
  int rating;
  String style;
  String madeIn;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.manufacturer,
    required this.description,
    required this.fabricColor,
    required this.rating,
    required this.style,
    required this.madeIn,
  });
}

 List<ProductModel> productItems = [
    ProductModel(
    name: 'Hanging Chair',
    manufacturer: 'by Carl MH Barenbrug',
    imageUrl: 'images/hanging chair.png',
    price: 2222,
    fabricColor: 'White',
    description:
        'Sound absorption is a key concept in room acoustics, which may not often be considered in furniture design',
    madeIn: 'Japan',
    rating: 4,
    style: 'Modern',
  ),

  ProductModel(
    name: 'Tune Sofa',
    manufacturer: 'by Carl MH Barenbrug',
    imageUrl: 'images/Tune Sofa.png',
    price: 1695,
    fabricColor: 'Silver',
    description:
        'Sound absorption is a key concept in room acoustics, which may not often be considered in furniture design',
    madeIn: 'Russia',
    rating: 5,
    style: 'Modern',
  ),
  ProductModel(
    name: 'EMKO Naive',
    manufacturer: 'by Carl MH Barenbrug',
    imageUrl: 'images/EMKO Naive.png',
    price: 1111,
    fabricColor: 'White',
    description:
        'Sound absorption is a key concept in room acoustics, which may not often be considered in furniture design',
    madeIn: 'Russia',
    rating: 3,
    style: 'Modern',
  ),
  ProductModel(
    name: 'Reform',
    manufacturer: 'by Carl MH Barenbrug',
    imageUrl: 'images/Reform.png',
    price: 120,
    fabricColor: 'White',
    description:
        'Sound absorption is a key concept in room acoustics, which may not often be considered in furniture design',
    madeIn: 'Russia',
    rating: 4,
    style: 'Modern',
  ),
  ProductModel(
    name: 'Ella Armchair',
    manufacturer: 'by Carl MH Barenbrug',
    imageUrl: 'images/Ella Armchair.png',
    price: 1695,
    fabricColor: 'White',
    description:
        'Sound absorption is a key concept in room acoustics, which may not often be considered in furniture design',
    madeIn: 'Russia',
    rating: 4,
    style: 'Modern',
  ),
 ProductModel(
  name: 'Wooden Chair',
  manufacturer: 'by Carl MH Barenbrug',
  imageUrl: 'images/Wooden Chair.png',
  price: 1200,
  fabricColor: 'Wooden',
  description:
  'Sound absorption is a key concept in room acoustics, which may not often be considered in furniture design',
  madeIn: 'Russia',
  rating: 4,
  style: 'Classic',
),

];

List<String> categoryList = [
  'Interiors',
  'Furniture',
  'Moods',
  'Creators',
  'Home Appliances'
];
