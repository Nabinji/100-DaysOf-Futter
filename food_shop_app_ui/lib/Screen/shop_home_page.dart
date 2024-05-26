import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_shop_app_ui/Model/model.dart';
import 'package:food_shop_app_ui/Screen/item_detail.dart';

class ShopHomePage extends StatefulWidget {
  const ShopHomePage({super.key});

  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myAppBar(),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "Fruits and berries",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.black,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // for search bar
            mySearchBar(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: MasonryGridView.builder(
                crossAxisSpacing: 20,
                itemCount: foodShopItems().length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = foodShopItems()[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemsDetails(item: item),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        height: item.height.toDouble(),
                        decoration: BoxDecoration(
                          color: item.bgColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              item.lb,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "\$${item.price}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Hero(
                                tag: item.imageUrl,
                                child: Image.asset(item.imageUrl)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 110),
                              child: Container(
                                height: 41,
                                width: 52,
                                decoration: BoxDecoration(
                                    color: item.myItems == true
                                        ? item.color
                                        : Colors.transparent,
                                    border: Border(
                                      top: BorderSide(
                                          width: 2, color: item.color),
                                      left: BorderSide(
                                          width: 2, color: item.color),
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(25),
                                        topLeft: Radius.circular(25))),
                                child: Icon(
                                  item.myItems == true
                                      ? Icons.check_sharp
                                      : Icons.add,
                                  color: item.myItems == true
                                      ? Colors.white
                                      : item.color,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }

  TextField mySearchBar() {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: const EdgeInsets.all(25),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 25, right: 15),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          )),
    );
  }

  Padding myAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 55,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.keyboard_arrow_left,
              size: 25,
            ),
          ),
          Image.asset(
            "images/two line.png",
            height: 30,
          ),
        ],
      ),
    );
  }
}
