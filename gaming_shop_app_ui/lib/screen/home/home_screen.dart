import 'package:flutter/material.dart';
import 'package:gaming_shop_app_ui/constants.dart';
import 'package:gaming_shop_app_ui/screen/home/product_list.dart';
import 'package:svg_flutter/svg.dart';

import 'botton_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> category = [
    "Controllers",
    "Headsets",
    "Keyboards",
    "Speakers,",
    "VR Accessories"
  ];
  int currentSelectItems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNaigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // for menu and searach
          myAppBarItems(),
          // for welcome text
          welcomeText(),
          const SizedBox(height: 5,)
,          // for category selection
          categorySelection(),
          // for body items
          ProductList(),
        ],
      ),
    );
  }

  SizedBox categorySelection() {
    return SizedBox(
          height: 35,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: currentSelectItems == index
                                  ? kSecondaryColor
                                  : kSecondTextColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 3,
                            width: 50,
                            color: currentSelectItems == index
                                ? kSecondaryColor
                                : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        );
  }

  Container welcomeText() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 10,
      ),
      child: const Text(
        "Welcome to \nPlaystation® Accessories",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  Padding myAppBarItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/icon_menu.svg",
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/icon_search.svg",
              )),
        ],
      ),
    );
  }
}
