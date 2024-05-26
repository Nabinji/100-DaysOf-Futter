import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watch_store_app/Screen/Components/star.dart';
import 'package:watch_store_app/constants.dart';
import 'package:watch_store_app/models/watch.dart';

class WatchDetailScreen extends StatelessWidget {
  const WatchDetailScreen({super.key, required this.watch});
  final Watch watch;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        iconTheme: const IconThemeData(color: starColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Hero(
                tag: watch.imageURL,
                child: Container(
                  width: size.width * 0.7,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        watch.imageURL,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i <= 8; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: i == 5 ? 10 : 7,
                    width: i == 5 ? 10 : 7,
                    decoration: BoxDecoration(
                        color: i == 5 ? Colors.redAccent : kPrimaryColor,
                        shape: BoxShape.circle),
                  ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      height: size.height * 0.61,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      watch.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        StarRating(rating: watch.star),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${watch.noOfRating} rating",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      child: Text(
                        watch.description,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
