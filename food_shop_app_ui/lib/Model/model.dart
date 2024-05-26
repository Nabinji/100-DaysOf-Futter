import 'package:flutter/material.dart';

class Item {
  bool myItems;

  String title;
  String description;
  Color color;
  Color bgColor;

  String price;
  String lb;
  String imageUrl;
  int height;

  Item({
    required this.myItems,
    required this.title,
    required this.description,
    required this.color,
    required this.bgColor,
    required this.price,
    required this.lb,
    required this.imageUrl,
    required this.height,
  });
}

List<Item> foodShopItems() {
  return <Item>[
    Item(
        myItems: true,
        title: 'Strawberries',
        description:
            'A strawberry is a short plant in the wild strawberry genus of the rose family. The name is also used for its very common sweet edible "fruit" and for flavors that taste like it.',
        color: const Color(0xFFF0A8AF),
        bgColor: const Color(0xFFFFE3E6),
        price: '2.45',
        lb: '1 kg',
        imageUrl: 'images/strawberry.png',
        height: 250),
    Item(
        myItems: false,
        title: 'Lychee',
        description:
            "Lychee is a tropical fruit that is unique in appearance and flavor. It's native to China but can grow in certain warm regions of the U.S like Florida and Hawaii.",
        color: const Color.fromARGB(255, 148, 248, 128),
        bgColor: const Color(0xFFD8FFD0),
        price: '8.22',
        lb: '1 lb',
        imageUrl: 'images/lychee.png',
        height: 200),
    Item(
        myItems: true,
        title: 'Dragon Fruit',
        description:
            'Dragon fruit, also known as pitaya or the strawberry pear, is a beautiful tropical fruit that is sweet and crunchy.',
        color: const Color(0xFFEBB1E4),
        bgColor: const Color(0xFFFFEEFE),
        price: '5.36',
        lb: 'Average 0.87 lb',
        imageUrl: 'images/dragon fruit.png',
        height: 250),
    Item(
      myItems: false,
      title: 'Blueberries',
      description:
          'Blueberries can be eaten freshly picked or incorporated into a variety of recipes. They can also be purchased frozen.',
      color: const Color(0xFFBAB9F5),
      bgColor: const Color(0xFFE4E5FE),
      price: '14.80',
      lb: '1 lb',
      imageUrl: 'images/blueberry.png',
      height: 190,
    ),
    Item(
        myItems: true,
        title: 'Mango',
        description:
            "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
        color: const Color(0xFFFFB25F),
        bgColor: const Color(0xFFFFE08E),
        price: '1.01',
        lb: 'each',
        imageUrl: 'images/mango.png',
        height: 250),
    Item(
        myItems: false,
        title: 'Papaya',
        description:
            'Papayas grow in tropical climates and are also known as papaws or pawpaws. Their sweet taste, vibrant color, and the wide variety of health benefits they provide make them a popular fruit.',
        color: const Color(0xFFF0A8AF),
        bgColor: const Color(0xFFFFE3E6),
        price: '1.99',
        lb: '2 units',
        imageUrl: 'images/papaya.png',
        height: 200),
    Item(
      myItems: true,
      title: 'Bananas',
      description:
          'Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.',
      color: const Color(0xFFFDD284),
      bgColor: const Color(0xFFFFFBD8),
      price: '1.15',
      lb: '1 lb',
      imageUrl: 'images/bananas.png',
      height: 250,
    ),
    Item(
        myItems: false,
        title: 'Pineapple',
        description:
            'Pineapples are tropical fruits that are rich in vitamins, enzymes and antioxidants. They may help boost the immune system, build strong bones and aid indigestion.',
        color: const Color(0xFFFDD284),
        bgColor: const Color(0xFFFFFBD8),
        price: '3.55',
        lb: 'each',
        imageUrl: 'images/pineapple.png',
        height: 200),
  ];
}
