import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var diceNum = Random().nextInt(6) + 1;
    setState(() {
      diceImage = 'assets/images/dice-$diceNum.png';
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        diceImage,
        width: 200,
      ),
      const SizedBox(
        height: 100,
      ),
      ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          child: const Text("Roll The Dice"))
    ]);
  }
}
