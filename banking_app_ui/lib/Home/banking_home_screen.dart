import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Detail/transaction_item_detail.dart';
import 'master_card.dart';
import 'transaction_items.dart';

class BankingHomeScreen extends StatefulWidget {
  const BankingHomeScreen({super.key});

  @override
  State<BankingHomeScreen> createState() => _BankingHomeScreenState();
}

class _BankingHomeScreenState extends State<BankingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          
          // for custom appbar
          customAppBar(),
          // for master card
          SizedBox(
            height: 340,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              children: [
                // for master card
                MesterCard(
                  id: "**********34567",
                  balance: '\$600',
                  color: Colors.deepPurple,
                ),
                MesterCard(
                  id: "**********54970",
                  balance: '\$60',
                  color: Colors.blueAccent,
                ),
                MesterCard(
                  id: "**********50970",
                  balance: '\$300',
                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Transaction",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: ListView(
                children: [
                  TransactionItems(
                      icon: Icons.flight_takeoff,
                      onTab: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context)=>  TransactionItemDetail()));
                      },
                      color: Colors.blue,
                      date: "24 feb",
                      remark: "Travelling",
                      time: "3 Day Ago",
                      total: "\$445.000"),
                  TransactionItems(
                      icon: Icons.fastfood,
                      onTab: () {},
                      color: Colors.orange,
                      date: "27 feb",
                      remark: "Food",
                      time: "Today",
                      total: "\$45.000"),
                  TransactionItems(
                      icon: Icons.man_outlined,
                      onTab: () {},
                      color: Colors.deepOrange,
                      date: "24 jan",
                      remark: "Yoga",
                      time: "1 Month Ago",
                      total: "\$445.000"),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Padding customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Card",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              Text(
                "27 Feb",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            height: 70,
            width: 75,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFF8B66),
            ),
            child: const Text(
              "😝",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
