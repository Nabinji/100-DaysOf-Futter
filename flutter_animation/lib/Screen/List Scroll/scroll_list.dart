import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animation/Model/scrol_list_model.dart';

class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  _MyHomePagesState createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  ScrollController controller = ScrollController();
  bool closeContainer = false;
  double myTopContainer = 0;
  List<Widget> myItems = [];
  @override
  void initState() {
    super.initState();
    myBodyItems();
    controller.addListener(() {
      double myData = controller.offset / 120;
      setState(() {
        myTopContainer = myData;
        closeContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              AnimatedOpacity(
                opacity: closeContainer ? 0 : 1,
                duration: const Duration(milliseconds: 500),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: size.width,
                  alignment: Alignment.topCenter,
                  height: closeContainer ? 0 : size.height * 0.31,
                  child: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Discover",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black45,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "view all",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black26,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            children: [
                              discoverItems(size, Colors.orange,
                                  "Most Favorite", "20 Items"),
                              discoverItems(
                                  size, Colors.blue, "Newest", "20 Items"),
                              discoverItems(size, Colors.blueAccent,
                                  "Super Saving", "20 Items"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 22,
                ),
                child: Text(
                  "My Coupons",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: controller,
                  itemCount: myItems.length,
                  itemBuilder: (context, index) {
                    double opacity = 1.0;
                    if (myTopContainer > 0.5) {
                      opacity = index + 0.5 - myTopContainer;
                      if (opacity < 0) {
                        opacity = 0;
                      } else if (opacity > 1) {
                        opacity = 1;
                      }
                    }
                    return Opacity(
                      opacity: opacity,
                      child: Transform(
                        transform: Matrix4.identity()..scale(opacity, opacity),
                        alignment: Alignment.topCenter,
                        child: Align(
                          heightFactor: 0.7,
                          child: myItems[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void myBodyItems() {
    List<Widget> listitems = [];
    for (ScrollItems items in dataItems) {
      listitems.add(
        Container(
          height: 160,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: Color(items.color),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.black26, blurRadius: 5),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                items.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Image.asset(
                items.image,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      );
    }
    setState(() {
      myItems = listitems;
    });
  }

  Container discoverItems(Size size, Color color, name, items) {
    return Container(
      height: size.height * 0.23,
      width: 170,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    height: 1.2,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  items,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 10,
              right: 10,
              child: Icon(
                Icons.favorite_border_sharp,
                color: Colors.white54,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
