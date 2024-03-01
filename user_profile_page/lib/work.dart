import 'package:flutter/material.dart';
import 'package:user_profile_page/Util/colors.dart';
import 'package:user_profile_page/user_profile_page.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<Work> {
  int selectedIndex = 1;
  void onItemsSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const UserProfilePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 240, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 17, right: 17),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),

// for name email , date of birth and address
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Software \nEngineer",
                          style: TextStyle(
                              fontSize: 45, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Type",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "Senior Engineer",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Joined",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "sep 2022",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Experience",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "4 Years",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  // For profile image
                  Container(
                    width: 190,
                    height: 290,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("Image/profile1.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 40,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                builderItem(0, "About"),
                builderItem(1, "Work"),
                builderItem(2, "Activity"),
              ],
            ),
          ),
          // for work object
          projects("17","Project \n done","92%","Success\n rate"),
           projects("5","Teams","243","Clients\nreports")
        ],
      ),
    );
  }

  Padding projects(number, name, number1, name1) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 17, right: 17),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                      top: 15,
                      left: 50,
                      child: Text(
                        number,
                        style: TextStyle(fontSize: 65, color: primaryColor),
                      )),
                  Positioned(
                      top: 95,
                      left: 50,
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 28, color: Colors.black38),
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                      top: 15,
                      left: 50,
                      child: Text(
                        number1,
                        style: TextStyle(fontSize: 65, color: primaryColor),
                      )),
                  Positioned(
                      top: 95,
                      left: 50,
                      child: Text(
                        name1,
                        style: TextStyle(fontSize: 28, color: Colors.black38),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector builderItem(int index, String label) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        onItemsSelected(index);
      },
      child: Container(
        width: 85,
        height: 30,
        decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
