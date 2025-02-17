import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:tarea_08_dado/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //Aquí programa las funciones los estados:
  int currentNumber = 1;
  bool isRolling = false;

  void rollDice(){
    if (isRolling) return; //Si ya anda girando, no hacer nada

    //Cambiando Estado cuando esta girando el dado
    setState(() {
      isRolling = true;
    });

    int rolls = 0;
    const totalRolls = 15;
    const rollDuration = Duration(milliseconds: 80);

    //Temporizador
    Timer.periodic(rollDuration, (Timer timer) {
      setState(() {
        currentNumber = randomizer.nextInt(6) + 1;
        rolls++;
      });

      //Cuando la paso el total de girar la imagen se detiene el Timer
      if(rolls >= totalRolls) {
        timer.cancel();
        setState(() {
          isRolling = false; //Cambiando estado
        });
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Contenido
        //Imagen stateful (cambia cada que se llama la funcion de girar dado)
        Image.asset(
          'assets/images/dice-$currentNumber.png',
          width: 200,
        ),
        //Botón girar dado
        ElevatedButton(
          onPressed: isRolling ? null : rollDice, // Deshabilitar si está girando
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          ),
          child: const StyledText('Girar'),
        ),
      ],
    );
  }
}
