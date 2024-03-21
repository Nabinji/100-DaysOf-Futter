import 'package:flutter/material.dart';
import 'package:watch_store_app/Screen/Components/star.dart';
import 'package:watch_store_app/Screen/watch_detail_screen.dart';
import 'package:watch_store_app/constants.dart';
import 'package:watch_store_app/models/watch.dart';

class WatchHomePage extends StatelessWidget {
  const WatchHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Image.asset(
                    "images/menu.png",
                    height: 45,
                    width: 45,
                  ),
                  SizedBox(width: size.width * 0.04),
                  const Text(
                    "Smartwatches",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "ANDROID WEAR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white60,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 460,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: androidWatch.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final watch = androidWatch[index];
                    return watchItems(size, watch,context);
                  }),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "SAMSUNG GEAR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white60,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 460,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: samsungWatch.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final watch = samsungWatch[index];
                    return watchItems(size, watch,context);
                  }),
            ),
          ],
        )),
      ),
    );
  }

  Padding watchItems(Size size, Watch watch,BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WatchDetailScreen(watch: watch),
                  ),
                );
              },
              child: Material(
                elevation: 5,
                shadowColor: Colors.black12,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 350,
                  width: size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        watch.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 10),
                      StarRating(rating: watch.star),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.7,
            height: 50,
            color: kPrimaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WatchDetailScreen(watch: watch),
                  ),
                );
              },
              child: Hero(
                tag: watch.imageURL,
                child: Container(
                  width: size.width * 0.45,
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          watch.imageURL,
                        ),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
