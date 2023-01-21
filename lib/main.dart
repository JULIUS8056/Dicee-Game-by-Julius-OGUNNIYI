import 'dart:math';

import 'package:flutter/material.dart';
import 'math.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee Game',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeState() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: FlatButton(
              onPressed: () {
                changeState();
              },
              child: Image.asset('images/dice$leftDiceNumber.png')),
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              onPressed: () {
                changeState();
              },
              child: Image.asset('images/dice$rightDiceNumber.png')),
        ),
      ],
    );
  }
}
