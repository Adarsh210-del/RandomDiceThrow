import 'package:flutter/material.dart';
import 'package:random_dice/button_text.dart';
import 'dart:math';

// class RollDice extends StatefulWidget {
//   const RollDice({super.key});

//   @override
//   State<RollDice> createState() => _RollDiceState();
// }

// class _RollDiceState extends State<RollDice> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var currentDiceRoll = 2;

  void diceRoll() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: diceRoll,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const ButtonText(),
        ),
      ],
    );
  }
}
