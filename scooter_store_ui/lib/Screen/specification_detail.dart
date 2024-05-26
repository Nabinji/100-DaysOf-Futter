import 'package:flutter/material.dart';

class SpecificationDetail extends StatelessWidget {
  const SpecificationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10, left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Wheel",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 200,
                child: LinearProgressIndicator(
                  value: 0.7,
                  backgroundColor: Colors.white10,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
              Text(
                "200 mm",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ],
          ),
            SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Weight",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 200,
                child: LinearProgressIndicator(
                  value: 0.3,
                  backgroundColor: Colors.white10,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "5.6 kg",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Speed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 200,
                child: LinearProgressIndicator(
                  value: 0.9,
                  backgroundColor: Colors.white10,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
              Padding(
               padding: EdgeInsets.only(left: 15),
                child: Text(
                  "9.5/10",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
