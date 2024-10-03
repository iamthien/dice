import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// Underscore (_) means this class is private and can only use in this file internally.
class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 2;

  void rollDice() {
    setState(() {
      activeDice = random.nextInt(6) + 1;
    });
    // print("Changing image");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$activeDice.png",
          width: 300,
        ),
        const SizedBox(height: 100),
        //function: (){//SomeCode}
        //Just put the name of function, it receives a pointer
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.amber,
                backgroundColor: Colors.white),
            child: const Text("Roll dice!"))
      ],
    );
  }
}
