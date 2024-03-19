import 'package:chat_app_ui/Model/model.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chat",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 40,
                      color: textColor,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    "images/search.png",
                    height: 40,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("images/profile.png"),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
              // for selection group and personal chat
              personalAndGroup(size),
              // for chat user
              Expanded(
                child: ListView.builder(
                  itemCount: userItems.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final chat = userItems[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black12.withOpacity(0.05),
                          ),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(chat.image),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  chat.message,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: chat.currentMesage == true
                                    ? Colors.pink
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            )
                          ],
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
      bottomSheet: bottomParts(size),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Container bottomParts(Size size) {
    return Container(
      height: size.height * 0.1,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 10,
          blurRadius: 10,
          offset: Offset(3, 10),
        ),
      ], color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  "images/chat.png",
                  height: 50,
                ),
                Text(
                  "Chats",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "images/call icon.png",
                  height: 50,
                ),
                Text(
                  "Calls",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "images/group.png",
                  height: 50,
                ),
                Text(
                  "Contacts",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding personalAndGroup(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 70,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: secondaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 5, left: 10),
          child: Row(
            children: [
              Container(
                height: 55,
                width: size.width / 2.6,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Text(
                    "Personal",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                "Groups",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
