import 'package:flutter/material.dart';
import 'package:tarea_08_dado/dice_roller.dart';

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

  //Atributo 2
  const GradiantContainer.dark({super.key})
      : color1 = Colors.grey,
        color2 = Colors.white,
        color3 = Colors.black;

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Gradiente
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
