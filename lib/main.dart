import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          title: Text('Diceeeeee'),
          backgroundColor: Colors.teal.shade500,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceState() {
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
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDiceState();
                  });
                },
                child: Image.asset("images/dice$leftDiceNumber.png")),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
                onPressed: () {
                  changeDiceState();
                },
                child: Image.asset("images/dice$rightDiceNumber.png")),
          ))
        ],
      ),
    );
  }
}
