import 'package:flutter/material.dart';
import 'package:toonflix2024/widgets/button.dart';
import 'package:toonflix2024/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                      ], //childre in Column
                    ),
                  ], // children in Row
                ),
                const SizedBox(height: 30),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  '\$5 194 382',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF2B33A),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ], //chidren in Row
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CurrencyCard(
                  currencyAmount: '6 428',
                  currencyCode: 'EUR',
                  currencyName: 'Euro',
                  currencyIcon: Icons.euro_rounded,
                  isInverted: false,
                  order: 1, //code challenge
                ),
                const CurrencyCard(
                  currencyAmount: '9 785',
                  currencyCode: 'Bitcoin',
                  currencyName: 'BTC',
                  currencyIcon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 2, //code challenge
                ),
                const CurrencyCard(
                  currencyAmount: '28 981',
                  currencyCode: 'USD',
                  currencyName: 'Dollar',
                  currencyIcon: Icons.attach_money_rounded,
                  isInverted: false,
                  order: 3, //code challenge
                ),
              ], // chidren in Column
            ),
          ),
        ),
      ),
    );
  }
}
