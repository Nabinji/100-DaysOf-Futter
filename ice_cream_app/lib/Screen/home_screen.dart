import 'package:flutter/material.dart';
import 'package:ice_cream_app/Model/model.dart';
import 'package:ice_cream_app/Screen/icecream_detail_screen.dart';
import 'package:ice_cream_app/Utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              // side part
              sideBar(),
              // body parts
              Container(
                width: size.width * 0.83,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 100,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ice Parlor",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text(
                          "Ice cream",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        // for search bar
                        mySearchBar(),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            height: size.height * 0.4,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: iceCreamList.length,
                              itemBuilder: (context, index) {
                                final iceCream = iceCreamList[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            IceCreamDetail(iceCream: iceCream),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    height: size.height * 0.35,
                                    width: size.width * 0.46,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 10,
                                          child: Material(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.circular(40),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30),
                                            ),
                                            elevation: 5,
                                            color: iceCream.color,
                                            child: Container(
                                              height: size.height * 0.27,
                                              width: size.width * 0.42,
                                              decoration: BoxDecoration(
                                                color: iceCream.color,
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(40),
                                                  topRight: Radius.circular(40),
                                                  bottomLeft:
                                                      Radius.circular(30),
                                                  bottomRight:
                                                      Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 18),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(height: 100),
                                                    Text(
                                                      iceCream.name,
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        height: 1.1,
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 20),
                                                    Text(
                                                      "\$${iceCream.price}",
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        height: 1.1,
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    const Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20,
                                                          bottom: 5,
                                                        ),
                                                        child: Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.black26,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 40,
                                          left: 35,
                                          child: Container(
                                            height: size.height * 0.17,
                                            width: size.width * 0.25,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image:
                                                    AssetImage(iceCream.image),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(80),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 20),
                          child: Text(
                            "Popular Flavours",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.22,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: popularFlavours.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        height: size.height * 0.18,
                                        width: size.width * 0.3,
                                        decoration: BoxDecoration(
                                          color: Colors.amberAccent,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                popularFlavours[index].image,
                                              ),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      popularFlavours[index].name,
                                      style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: size.height * 0.47,
            left: size.width * 0.13,
            child: Container(
              height: 60,
              width: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 6,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 50,
            right: 20,
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }

  Padding mySearchBar() {
    return Padding(
      padding: const EdgeInsets.only(right: 25, top: 25),
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 30,
            ),
            fillColor: Colors.black12.withOpacity(0.08),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
            ),
            hintText: "Search",
            hintStyle: const TextStyle(fontSize: 19, color: Colors.black45),
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }

  Expanded sideBar() {
    return Expanded(
      child: Container(
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 50),
              child: Image.asset(
                "images/icon.png",
                width: 25,
              ),
            ),
            const SizedBox(height: 40),
            rotatableText("Chocolate"),
            rotatableText("All"),
            rotatableText("Exocotic"),
            rotatableText("Vanilla"),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Padding rotatableText(text) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
