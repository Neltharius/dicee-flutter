import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = rnd();
  int rightDiceButton = rnd();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceButton = rnd();
                  });
                },
                child: Image.asset('images/dice$leftDiceButton.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDiceButton = rnd();
                  });
                },
                child: Image.asset('images/dice$rightDiceButton.png'),
              ),
            ),
          ],
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              leftDiceButton = rnd();
              rightDiceButton = rnd();
            });
          },
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: Text(
            'Random both Dice',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

int rnd() {
  int rnd = Random().nextInt(6) + 1;
  return rnd;
}
