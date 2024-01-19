// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[500],
        appBar: AppBar(
          title: Center(
            child: Text('Dicee',
            style:TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            )),
          ),
          backgroundColor: Colors.red[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

void changeDice(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
}
  @override
  Widget build(BuildContext context) {
  
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    changeDice();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  setState((){
                    changeDice();
                  });
                }, 
                child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
            ),
          ),
        ],
      ),
    );
  }

}
