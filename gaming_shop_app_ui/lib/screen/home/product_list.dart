import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/Common/rating.dart';
import 'package:gaming_shop_app_ui/constants.dart';
import 'package:gaming_shop_app_ui/model/product.dart';
import 'package:gaming_shop_app_ui/screen/detail/detail_screen.dart';
import 'package:svg_flutter/svg.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int currentSelectItems = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return gamingItems(index);
          }),
    );
  }

  GestureDetector gamingItems(int index) {
    double scale = 1.1;
    Color backgroundColor = kBackgroundColor;
    Color textColor = kPrimaryTextColor;
    if (currentSelectItems == index) {
      scale = 1.35;
      backgroundColor = kSelectCardBackgroundColor;

      textColor = Colors.white;
    }
    final game = productList[index];
    return GestureDetector(
      onTap: () {
        // for navigation
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(game: game),
          ),
        );
        if (currentSelectItems == index) {
        } else {
          setState(
            () {
              currentSelectItems = index;
            },
          );
        }
      },
      child: Row(
        children: [
          Container(
            width: 270 * scale,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              children: [
                Container(
                  width: 235 * scale,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(10, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 28,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 7 * scale,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                game.name,
                                maxLines: 2,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14 * scale,
                                  color: textColor,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7 * scale,
                            ),
                            const Rating(),
                            SizedBox(
                              height: 8 * scale,
                            ),
                            Text(
                              "\$${game.price}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16 * scale,
                                color: textColor,
                              ),
                            ),
                            SizedBox(
                              height: 8 * scale,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(14),
                              bottomRight: Radius.circular(21),
                            ),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/icon_add_cart.svg",
                            width: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Hero(
                          tag: game.imagePic,
                      child: Image.asset(
                        game.imagePic,
                        height: 75 * scale,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
