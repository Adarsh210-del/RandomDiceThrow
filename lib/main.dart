import 'package:flutter/material.dart';
import 'package:random_dice/gradient_background.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientBackground([Color.fromARGB(255, 243, 71, 8, ), Color.fromARGB(255, 197, 105, 98)]),
    )
  ));
}

