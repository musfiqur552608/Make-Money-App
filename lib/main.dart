import 'package:flutter/material.dart';
import 'package:makemoneyapp/add_money_btn.dart';
import 'package:makemoneyapp/bank_balance.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double bankBalance = 0;
  void addMoney() async{
    bankBalance += 500;
    setState(() {
      bankBalance;
    });
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setDouble('decimal', bankBalance);
  }
  @override
  void initState() {
    loadBalance();
    super.initState();
  }

  void loadBalance() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bankBalance = prefs.getDouble('decimal') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Make Money App')),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blueGrey[700],
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BankBalance(bankBalance: bankBalance),
              AddMoneyBtn(addMoney: addMoney),
            ],
          ),
        ),
      ),
    );
  }
}
