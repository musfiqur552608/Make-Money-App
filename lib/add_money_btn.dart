import 'package:flutter/material.dart';

class AddMoneyBtn extends StatelessWidget {
  void Function() addMoney;
  AddMoneyBtn({super.key, required this.addMoney});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          minimumSize: Size(double.infinity, 0),
        ),
        onPressed: addMoney,
        child: Text("Click Here"),
      ),
    );
  }
}
