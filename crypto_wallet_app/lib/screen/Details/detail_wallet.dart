import 'package:crypto_wallet_app/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'bitcoin_info.dart';
import 'chart.dart';

class DetailWalletScreen extends StatelessWidget {
  const DetailWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: const Color(0xffECF5FD),
      body: Column(
        children: [
          myAppBar(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const BitcoinInfo(
                    name: 'Bitcoin',
                    iconUrl:
                        'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Bitcoin-icon.png',
                    crypto: '3.529020 BTC',
                    totalBalance: '\$19.153 USD',
                    precent: -2.32),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Day',
                      style: TextStyle(color: Colors.black45),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Week',
                          style: TextStyle(color: Colors.white),
                        )),
                    const Text(
                      'Month',
                      style: TextStyle(color: Colors.black45),
                    ),
                    const Text(
                      'Year',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: 5, backgroundColor: Colors.pink),
                                SizedBox(width: 10),
                                Text(
                                  'Lower: \$4.896',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: 5, backgroundColor: Colors.green),
                                SizedBox(width: 10),
                                Text(
                                  'Higher:\$6.857',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 6,
                        child: const Stack(children: [
                          ShowLineChart(),
                          Positioned(
                            bottom: 92,
                            right: 27,
                            child: CircleAvatar(
                                radius: 10, backgroundColor: Colors.orange),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Row(
                              children: [
                                CircleAvatar(
                                    radius: 5, backgroundColor: Colors.amber),
                                SizedBox(width: 10),
                                Text(
                                  '1BTC=\$5.483',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: buySellButton(Colors.blue, 'Buy'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: buySellButton(Colors.pink, 'Sell'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container myAppBar(context) {
    return Container(
      height: 110,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
            ),
          ),
          const Text(
            "Wallets",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("images/icon1.png", height: 25),
        ],
      ),
    );
  }

  Widget buySellButton(Color color, String text) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: color,
              child: const Icon(
                Icons.attach_money,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black54,
              ),
            ),
          ],
        ));
  }
}

