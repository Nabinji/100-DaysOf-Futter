import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent_app_ui/constants.dart';

class HouseDetail extends StatelessWidget {
  const HouseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              itemDetail("assets/icons/bedroom.svg", "5 Bathroom \n3 Master Bedroom"),

              itemDetail("assets/icons/bathroom.svg", "5 Bathroom \n3 Toilet"),
            ],
          ),
          const SizedBox(height: 10,),
           Row(
            children: [
              itemDetail(
                  "assets/icons/ketchen.svg", "2 Ketchen \n120 sqft"),
              itemDetail("assets/icons/parking.svg", "2 Parking \n180 sqft"),
            ],
          ),
        ],
      ),
    );
  }

  Expanded itemDetail(image, text) => Expanded(
          child: Row(
        children: [
          SvgPicture.asset(image,height: 30,),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 14, color: bodyTextColor),
          )
        ],
      ));
}
