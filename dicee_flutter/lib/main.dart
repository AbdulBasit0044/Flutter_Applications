import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

Random random = new Random();
var leftDiceNumber = 1 + random.nextInt(5);
var rightDiceNumber = 6 - leftDiceNumber;

class _DicePageState extends State<DicePage> {
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = 1 + random.nextInt(5);
      rightDiceNumber = 6 - leftDiceNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
