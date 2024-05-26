import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/constants.dart';

class SlidableImage extends StatefulWidget {
  const SlidableImage({super.key});

  @override
  State<SlidableImage> createState() => _SlidableImageState();
}

class _SlidableImageState extends State<SlidableImage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: size.height / 2.4,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: PageView(
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: true,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                physics: const ClampingScrollPhysics(),
                children: [
                  Image.asset("images/image1.png", fit: BoxFit.cover),
                  Image.asset("images/image2.png", fit: BoxFit.cover),
                  Image.asset("images/image3.png", fit: BoxFit.cover)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: size.width / 3,
            right: size.width / 3,
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: 3,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 5,
                      width: pageIndex == index ? 30 : 20,
                      decoration: BoxDecoration(
                        color: pageIndex == index
                            ? Colors.white
                            : Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  }),
            ),
          ),
          Positioned(
            left: 110,
            right: 110,
            bottom: -25,
            child: MaterialButton(
              onPressed: () {},
              height: 60,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              color: buttonColor,
              child: const Text(
                "Shop now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
