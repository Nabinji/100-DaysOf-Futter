import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:salon_booking_app/Model/model.dart';
import 'package:salon_booking_app/Screen/category_selection.dart';
import 'package:salon_booking_app/Utils/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "images/image1.png",
                height: size.height * 0.21,
                width: size.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: size.height * 0.13,
                left: 40,
                right: 40,
                child: Row(
                  children: [
                    iconContainer(Icons.add),
                    const Spacer(),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("images/image33.png"),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 6,
                        ),
                      ),
                    ),
                    const Spacer(),
                    iconContainer(Icons.call),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.09),
          Column(
            children: [
              const Text(
                "Jesica Parker",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                "Make-Up Artist and Hair Designer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(
                        Icons.star,
                        color: i < 4 ? Colors.amber : Colors.black38,
                      ),
                    )
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    designerSkill("bridal make-up"),
                    designerSkill("make-up"),
                    designerSkill("lashes"),
                    designerSkill("brow artist"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  designerSkill("tatoo cover-up"),
                  designerSkill("lessons"),
                  designerSkill("express make-up"),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 75,
                    child: Container(
                      height: 1,
                      width: size.width,
                      color: Colors.black12,
                    ),
                  ),
                  const Divider(
                    color: Colors.black12,
                    height: 50,
                  ),
                  const Positioned(
                    top: 35,
                    child: CategorySelection(),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.63,
                  crossAxisSpacing: 15,
                ),
                itemCount: userInfo.length,
                itemBuilder: (context, index) {
                  final product = userInfo[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        product.image,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      const Text("Day nude makeup red lips..."),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset(
                            "images/chat.png",
                            height: 15,
                            color: Colors.black54,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            product.chat,
                            style: const TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.black26,
                          ),
                           const SizedBox(width: 5),
                            Text(
                            product.love,
                            style: const TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                }),
          )),
        ],
      ),
    );
  }

  Padding designerSkill(text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        right: 5,
        left: 5,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Container iconContainer(icon) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            primaryColor,
            secondaryColor,
          ]),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ]),
      child: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
