import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MaterialApp(
    home: CalculatorApp(),
    debugShowCheckedModeBanner: false,
  ));
}


class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key});

  @override

  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          children: [
            Expanded(
              child: Container(color: Colors.red)),
            Row(
              children: [
                button(),button(),
          ],
        )
      ]
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  Widget button() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(22),
            primary: buttonColor,
          ),
          onPressed: () {},
          child: const Text("1",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
