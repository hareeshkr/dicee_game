import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  var random = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    leftDiceNumber = random.nextInt(6) + 1;
                    rightDiceNumber = random.nextInt(6) + 1;
                  });
                },
                  child: Image.asset('images/dice$leftDiceNumber.png'))
          ),
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    rightDiceNumber = random.nextInt(6) + 1;
                    leftDiceNumber = random.nextInt(6) + 1;
                  });
                },
                  child: Image.asset('images/dice$rightDiceNumber.png'))
          ),
        ],
      ),
    );
  }
}

