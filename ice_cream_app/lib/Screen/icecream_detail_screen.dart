import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ice_cream_app/Model/model.dart';
import 'package:ice_cream_app/Screen/star_rating.dart';
import 'package:ice_cream_app/Utils/colors.dart';

class IceCreamDetail extends StatefulWidget {
  const IceCreamDetail({super.key, required this.iceCream});
  final IceCream iceCream;

  @override
  State<IceCreamDetail> createState() => _IceCreamDetailState();
}

class _IceCreamDetailState extends State<IceCreamDetail> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.63,
                  ),
                  Text(
                    widget.iceCream.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  // for rating
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      StarRating(
                        rating: widget.iceCream.star,
                      ),
                      const SizedBox(width: 5),
                      Text("${widget.iceCream.star}.0")
                    ],
                  ),
                  const SizedBox(height: 30),
                  // for price and quantity
                  Row(
                    children: [
                      Text(
                        "\$${widget.iceCream.price}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.black45,
                      ),
                      const SizedBox(width: 40),
                      Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 30,
                        width: 130,
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantity > 1) {
                                    quantity--;
                                  }
                                });
                              },
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              quantity.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: cardColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Cold and Creamy icecream filled with crunchy oreo, so thick and chocolaty that wil make your day.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: Colors.black54,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: secondaryColor),
                          child: const Center(
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: size.height * 0.6,
              width: size.width,
              decoration: BoxDecoration(
                color: widget.iceCream.color,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "images/icon.png",
                            width: 25,
                          ),
                          const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Text(
                      widget.iceCream.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      widget.iceCream.image,
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
