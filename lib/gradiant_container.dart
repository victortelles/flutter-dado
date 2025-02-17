import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startAlignment = Alignment.bottomCenter;
const endAlignment = Alignment.topCenter;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1, this.color2, this.color3, {super.key});

  //Atributo 1
  const GradiantContainer.green({super.key})
      : color1 = Colors.lightGreen,
        color2 = Colors.red,
        color3 = Colors.yellowAccent;

  //Atributo 2
  const GradiantContainer.blue({super.key})
      : color1 = Colors.lightBlue,
        color2 = Colors.red,
        color3 = Colors.blueGrey;

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
