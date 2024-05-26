import 'package:flutter/material.dart';
import 'package:responsive_pets_web_app/constants.dart';

class PetsMoreServices extends StatelessWidget {
  const PetsMoreServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        petsServices(
            icon: Icons.discount_outlined,
            title: "30% Offer\nThis Month",
            press: () {}),
        petsServices(
            icon: Icons.delivery_dining,
            title: "Free Shipping\n For Member",
            press: () {}),
        petsServices(
            icon: Icons.precision_manufacturing_sharp,
            title: "Easy Online\n Purchase",
            press: () {}),
        petsServices(
            icon: Icons.medical_services_outlined,
            title: "Animal Care\n Services",
            press: () {}),
        petsServices(
            icon: Icons.shopping_cart,
            title: "Pets\nShopes",
            press: () {}),
      ],
    );
  }

  Padding petsServices({press, icon, title}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: press,
        child: Wrap(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon,size: 45,),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
