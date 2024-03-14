import 'package:flutter/material.dart';

class TransactionItems extends StatelessWidget {
  VoidCallback onTab;
  IconData icon;
  Color color;
  String remark;
  String total;
  String time;
  String date;
  TransactionItems({
    super.key,
    required this.icon,
    required this.onTab,
    required this.color,
    required this.date,
    required this.remark,
    required this.time,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10
      ),
      child: GestureDetector(
        onTap: ()=> onTab(),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 18),
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: color.withOpacity(0.12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                size: 30,
                color: color,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
      
                children: [
                  Text(
                    remark,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                   Text(
                    time,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
             Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    total,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
