import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Text("Diceee"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;

  @override
  Widget build(BuildContext context) {
    int num = Random().nextInt(6) + 1;
    void setState1() {
      setState(() {
        rightNumber = num;
      });
    }

    void setState2() {
      setState(() {
        leftNumber = num;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState2();
                },
                child: Image.asset('images/dice$leftNumber.png')),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState1();
              },
              child: Image.asset('images/dice$rightNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
