import 'package:chat_app_ui/Screen/chat_home_page.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Stack(
                children: [
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.2,
                        color: Colors.black12.withOpacity(0.05),
                      ),
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 36,
                    child: Container(
                      height: size.height * 0.31,
                      width: size.width * 0.67,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.2,
                          color: Colors.black12.withOpacity(0.09),
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75,
                    left: 70,
                    child: Container(
                      height: size.height * 0.23,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.2,
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 110,
                    child: SizedBox(
                      height: size.height * 0.14,
                      width: size.width * 0.3,
                      child: Column(
                        children: [
                          Image.asset(
                            "images/cloud.png",
                          ),
                          Text(
                            "CHAT APP",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 23,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  "A new way to connect\nwith your friends",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: textColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.07),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatHomePage(),
                    ),
                  );
                },
                child: Container(
                  height: 65,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primaryColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      right: 5,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
