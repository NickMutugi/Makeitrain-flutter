// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyApp();
  }
}

class MyApp extends State<Home> {
  int _moneyCounter = 25;

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: const Text("Hustle"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const Center(
              child: (Text(
                "Get Rich",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              )),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '\$$_moneyCounter',
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: _rainMoney,
                  child: const Text(
                    "Press Me",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
