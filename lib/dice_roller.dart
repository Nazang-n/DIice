import 'package:flutter/material.dart';
import 'dart:math';

var activeDiceImage = 'assets/images/dice-1.png';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:226408284.

//widges class
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }


//state class
}
class _DiceRollerState extends State<DiceRoller>{
  @override
  Widget build(BuildContext context){
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(activeDiceImage,
              width: 200,
              height: 300,),
              const SizedBox(height: 50),
              TextButton(onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),)
            ],
          );
  }

  void rollDice() {
    setState(() {
        var diceRoll = Random().nextInt(6) + 1;
        activeDiceImage = 'assets/images/dice-$diceRoll.png';
      });
  }
  
}



