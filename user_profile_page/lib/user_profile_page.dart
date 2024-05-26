import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_profile_page/Util/colors.dart';
import 'package:user_profile_page/work.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int selectedIndex = 0;
  void onItemsSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    // now we make when we select work go to the next screen
    if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Work()));
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
                  // For profile imagge
                  Container(
                    width: 190,
                    height: 290,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("Image/profile1.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
// for name email , date of birth and address
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Emily \nNelson",
                          style: TextStyle(
                              fontSize: 45, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Email",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "email.n@hotmail.com",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Date of Birth",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "December,07,2020",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Address",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "Pasadena California",
                          style: TextStyle(
                              fontSize: 20, height: 0.9, color: primaryColor),
                        ),
                      ],
                    ),
                  )
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
          // For bio
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 17, right: 17, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 18, left: 18),
                    child: Text(
                      "BIO",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 2, right: 18, left: 18, bottom: 20),
                    child: Text(
                      "I am a passionate software developer with a keen interest in creating innovative solutions. With a background in computer science and years of hands-on experience",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 18, left: 18,bottom: 10),
                    child: Text(
                      "ON THE WEB",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 2, right: 18, left: 18, bottom: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 15,),
                           CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            child: const Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                          ),
                          
                        ],
                      )),
                ],
              ),
            ),
          ),
          // for websit and phone
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 17, right: 17),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 25, left: 18),
                    child: Row(children: [
                        Text(
                          "WEBSITE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        Spacer(),
                         Text(
                          "www.portfolio.emily.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 18,
                              color: primaryColor),
                        ),
                      ],),

                  ),
                     Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 25, left: 18),
                    child: Row(
                      children: [
                        Text(
                          "PHONE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        Spacer(),
                        Text(
                          "965-948-938",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],),
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
