import 'package:flutter/material.dart';
import 'package:first_app/diceroller.dart';

final startallignment = Alignment.topLeft;
const endallignment = Alignment.bottomRight;
//or use var but without using const above for any parents



class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startallignment,
          end: endallignment,
          colors: [color1, color2],
        ),
      ),
      child: Center(
        child: DiceRoller() 
      ),
    );
  }
}
