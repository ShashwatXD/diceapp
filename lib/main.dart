import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roll',
      home: dcr(),
    );
  }
}
class dcr extends StatefulWidget {
  @override
  dcrobj createState() => dcrobj();
}
class dcrobj extends State<dcr> {
  int diceNumber = 1;
  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color.fromRGBO(240, 154, 154, 1),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(300,100,100,.5),
        title: Text('Dice Roller APP'),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: rollDice,
              child: Image.asset(
                'dice/dice$diceNumber.png',
                height: 160,
              ),
            ),
            ElevatedButton(
              onPressed: rollDice,
              child: const Text('Roll'),
            ),
          ],
        ),
      ),
    );
  }}
