import 'package:car_rental_app/Common/card_list.dart';
import 'package:car_rental_app/constants.dart';
import 'package:car_rental_app/model/car.dart';
import 'package:car_rental_app/screens/Detail/car_detail_screen.dart';
import 'package:flutter/material.dart';

class CarHomeScreen extends StatelessWidget {
  const CarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: const Text(
          "Available Car",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];
          return GestureDetector(
            onTap: () {
              // for navigating
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CarDetailScreen(car)));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
                    padding: const EdgeInsets.only(
                        left: 25, bottom: 15, right: 20, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: cardColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$${car.price.toString()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "price/hr",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CarItems(name: "Brand", value: car.brand),
                            CarItems(name: "Model No", value: car.model),
                            CarItems(name: "CO2", value: car.co2),
                            CarItems(name: "Fule Cons", value: car.fuelCons),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30,
                    child: Hero(
                      tag: car.image,
                      child: Image.asset(
                        car.image,height: 115,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
