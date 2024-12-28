import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart';
import 'package:myapp/styled_text.dart';


var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:startAlignment,
            end: endAlignment,
            colors: [Colors.purple, Colors.red])),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

