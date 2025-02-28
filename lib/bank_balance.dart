import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          Text(
            "${NumberFormat.simpleCurrency().format(bankBalance)}",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
