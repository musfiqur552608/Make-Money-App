import 'package:flutter/material.dart';

class BankBalance extends StatelessWidget {
  double bankBalance;
  BankBalance({super.key, required this.bankBalance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bank Balance"),
          SizedBox(height: 20),
          Text("$bankBalance"),
        ],
      ),
    );
  }
}
