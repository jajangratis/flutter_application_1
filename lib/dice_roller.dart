import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-1.png';
  var current = 1;

  void rollDice() {
    var roll = randomizer.nextInt(6)+1;
    setState(() {
      current = roll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$current.png', width: 200,),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice, 
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white, 
            textStyle: const TextStyle(fontSize: 28)
          ),
          child: const StyledText('Roll Dice')
        ),
    ]);
  }
}