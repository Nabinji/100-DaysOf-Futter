import 'package:flutter/material.dart';
import 'package:web_app_ui/Utils/colors.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 50),
            // for logo
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/logo.png",
                      height: 70,
                      width: 70,
                    ),
                    Text(
                      "LOGO",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: primaryTextColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    menuItems("HOME"),
                    menuItems("CAREERMINE"),
                    menuItems("MINING JOBS"),
                    menuItems("CONTACT"),
                    menuItems("ABOUT US"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage(
                    "images/background.png",
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 190),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How do I become",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: secondaryTextColor,
                          ),
                        ),
                        Text(
                          "A MINING\nENGINEER?",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 50,
                            height: 1.2,
                            color: primaryTextColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Lorem ipsum dolor sit amet, vel te stet exerci\nconsequat. Verterem scribentur vim ei Solet\nconclusionemaue ea vix. an veniam virtute\nvivendo usu,mei et dolor,",
                          style: TextStyle(
                            fontSize: 15,
                            color: primaryTextColor.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 40),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  gradient1,
                                  gradient2,
                                ],
                              ),
                            ),
                            child: const Text(
                              "Read more",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 130),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: buttonColor,
                      ),
                      child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding menuItems(name) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: primaryTextColor,
        ),
      ),
    );
  }
}
