class Watch {
  String id;
  String name;
  String description;
  String price;
  String imageURL;
  int star;
  int noOfRating;

  Watch({
    required this.id,
    required this.noOfRating,
    required this.name,
    required this.description,
    required this.price,
    required this.imageURL,
    required this.star,
  });
}

List<Watch> androidWatch = [
  Watch(
    id: '1',
    noOfRating: 10,
    name: "Verizon's \nWear 2.0 smartwatch",
    price: '300',
    imageURL: 'images/Verizon.png',
    star: 4,
    description:
        "Verizon is Mobvoi's first attempt at creating a smartwatch powered by their TicWear OS by Google operating system. TicWatch is compatible with Android and iOS devices. It can be used as a standalone fitness tracker and has built in GPS and heart rate sensor chipsets.",
  ),
  Watch(
    id: '2',
    name: "Apple's \nWear 2.0 smartwatch",
    price: '300',
    noOfRating: 21,
    imageURL: 'images/watch1.png',
    star: 5,
    description:
        "Verizon is Mobvoi's first attempt at creating a smartwatch powered by their TicWear OS by Google operating system. TicWatch is compatible with Android and iOS devices. It can be used as a standalone fitness tracker and has built in GPS and heart rate sensor chipsets.",
  ),
  Watch(
      id: '3',
      name: "Galaxy \nWear 3.0 smartwatch",
      price: '300',
      noOfRating: 13,
      imageURL: 'images/galaxy.png',
      star: 4,
      description:
          "Connect seamlessly with your Galaxy ecosystem in the office, on the road or wherever work takes your team. Enjoy exclusive volume discounts on eligible watches with a Samsung Business Account, Samsung Business Financing and free shipping."),
  Watch(
    id: '4',
    name: "Tick watch's \nWear 2.0 smartwatch",
    price: '300',
    imageURL: 'images/watch3.png',
    star: 5,
    noOfRating: 100,
    description:
        "Tick watch is Mobvoi's first attempt at creating a smartwatch powered by their TicWear OS by Google operating system. TicWatch is compatible with Android and iOS devices. It can be used as a standalone fitness tracker and has built in GPS and heart rate sensor chipsets.",
  ),
];

List<Watch> samsungWatch = [
  Watch(
    id: '1',
    name: "Samsung \nGalaxy Watch5",
    price: '300',
    noOfRating: 111,
    star: 5,
    imageURL: 'images/samsung.png',
    description:
        "Samsung watch is Mobvoi's first attempt at creating a smartwatch powered by their TicWear OS by Google operating system. TicWatch is compatible with Android and iOS devices. It can be used as a standalone fitness tracker and has built in GPS and heart rate sensor chipsets.",
  ),
  Watch(
    id: '2',
    name: "Samsung watch's \nWear 2.0 smartwatch",
    price: '300',
    noOfRating: 11,
    star: 5,
    imageURL: 'images/watch4.png',
    description:
        "Samsung watch is Mobvoi's first attempt at creating a smartwatch powered by their TicWear OS by Google operating system. TicWatch is compatible with Android and iOS devices. It can be used as a standalone fitness tracker and has built in GPS and heart rate sensor chipsets.",
  ),
  Watch(
    id: '2',
    name: "Gear watch's \nWear 2.0 smartwatch",
    price: '300',
    noOfRating: 0,
    star: 4,
    imageURL: 'images/watch5.png',
    description:
        "Samsung is Mobvoi's first attempt at creating a smartwatch powered by their TicWear OS by Google operating system. TicWatch is compatible with Android and iOS devices. It can be used as a standalone fitness tracker and has built in GPS and heart rate sensor chipsets.",
  )
];
