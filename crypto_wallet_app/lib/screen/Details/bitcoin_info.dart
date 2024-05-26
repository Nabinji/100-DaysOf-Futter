import 'package:flutter/material.dart';

class BitcoinInfo extends StatelessWidget {
  const BitcoinInfo({
    super.key,
    required this.name,
    required this.iconUrl,
    required this.crypto,
    required this.totalBalance,
    required this.precent,
  });

  final String name;
  final String iconUrl;
  final String crypto;
  final String totalBalance;
  final double precent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                iconUrl,
                width: 50,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              const Text(
                "BTC",
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          const SizedBox(height: 20),
          Text(
            crypto,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                totalBalance,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black38),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                decoration: BoxDecoration(
                    color: precent >= 0 ? Colors.green : Colors.pink,
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: Text(
                  precent >= 0 ? '+ $precent %' : '$precent %',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const Center(
            child: Icon(Icons.keyboard_arrow_down,
                size: 30, color: Colors.black45),
          )
        ],
      ),
    );
  }
}
