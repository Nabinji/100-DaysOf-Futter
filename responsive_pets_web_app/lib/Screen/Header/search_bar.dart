import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 50, right: 50),
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "What you are looking for?",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black45,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
