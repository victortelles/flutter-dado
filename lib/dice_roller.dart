import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //Aquí programa las funciones los estados:

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Aquí irá el dado y el botón de Girar.")],
    );
  }
}
