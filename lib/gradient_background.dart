import 'package:flutter/material.dart';
import 'package:random_dice/roll_dice.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground(this.colors,{super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        begin:Alignment.centerLeft,
        end: Alignment.centerRight,
      )),

      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
