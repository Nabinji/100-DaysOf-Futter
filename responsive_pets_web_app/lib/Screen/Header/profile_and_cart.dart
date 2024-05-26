import 'package:flutter/material.dart';

class ProfileAndCart extends StatelessWidget {
  const ProfileAndCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            border: Border.all(color: Colors.black54),
          ),
          child: const Icon(Icons.person_outlined),
        ),
          Container(
          width: 50,
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.black54),
          ),
          child: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
