import 'package:flutter/material.dart';

class StatisticsData extends StatelessWidget {
  const StatisticsData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Statistics",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.tune,
                  size: 32,
                  color: Colors.white54,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.orange,
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black12,
                  ),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFE9AA4E),
                    ),
                    child: const Center(
                      child: Text(
                        "55%",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      "Average Spand",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    Text(
                      "\$4,100",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.file_open,
                          color: Colors.white,
                          size: 18,
                        ),
                          SizedBox(
                          width: 10,
                        ),
                         Text(
                          "Report",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// add completed.