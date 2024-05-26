import 'package:flutter/material.dart';

class Heating extends StatefulWidget {
  const Heating({super.key});

  @override
  State<Heating> createState() => _HeatingState();
}

class _HeatingState extends State<Heating> {
  double heat = 12;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      borderRadius: BorderRadius.circular(8),
      shadowColor: Colors.black12,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "HEATING",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),
            Slider(
              value: heat,
              onChanged: (newHeatin) {
                setState(() {
                  heat = newHeatin;
                });
              },
              max: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0\u00b0",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  Text(
                    "15\u00b0",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  Text(
                    "30\u00b0",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black26),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FanSpeed extends StatefulWidget {
  const FanSpeed({super.key});

  @override
  State<FanSpeed> createState() => _FanSpeedState();
}

class _FanSpeedState extends State<FanSpeed> {
  double fan = 15;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      borderRadius: BorderRadius.circular(8),
      shadowColor: Colors.black12,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "FAN SPEED",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),
            Slider(
              value: fan,
              onChanged: (newHeatin) {
                setState(() {
                  fan = newHeatin;
                });
              },
              max: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "LOW",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  Text(
                    "MID",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  Text(
                    "HIGH",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black26),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
