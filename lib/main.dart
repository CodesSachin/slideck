import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(_RollingDiceState());
}

class _RollingDiceState extends State<RollingDice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  // Method Declaration. Called by onPressed()
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                  'images/dice$leftDiceNumber.png'),
              onPressed: () {
                changeDiceFace(); // Method called
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                  'images/dice$rightDiceNumber.png'),
              onPressed: () {
                changeDiceFace(); // Method called
              },
            ),
          ),
        ],
      ),
    );
  }
}