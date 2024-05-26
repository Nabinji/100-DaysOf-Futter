import 'package:flutter/material.dart';

class TotalWalletBalance extends StatelessWidget {
  const TotalWalletBalance({
    super.key,
    required this.context,
    required this.totalBalance,
    required this.crypto,
    required this.percentage,
  });

  final BuildContext context;
  final String totalBalance;
  final crypto;
  final percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        width: MediaQuery.of(context).size.width / 1.15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.black.withOpacity(0.7),
                    child: const InkWell(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Text('Total Wallet Balance'),
                ),
                const Row(
                  children: [
                    Text(
                      'USD',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black54,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  totalBalance,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                // for increment decrement
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: percentage >= 0
                        ? const Color.fromARGB(255, 44, 169, 48)
                        : Colors.pink,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Text(
                    percentage >= 0 ? '+$percentage%' : '$percentage%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Text(
              '$crypto',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black26),
            ),
            const Center(
              child: Icon(Icons.keyboard_arrow_down_sharp,
                  size: 30, color: Colors.black38),
            )
          ],
        ),
      ),
    );
  }
}
