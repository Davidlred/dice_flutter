import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Text("Diceee"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: const DicePage(),
  )));
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    var Number = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {}, child: Image.asset('images/dice$Number.png')),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
