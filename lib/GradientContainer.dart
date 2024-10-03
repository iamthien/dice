import 'package:dice/StyledText.dart';
import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.bottomRight;
const endAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  //Constructor
  //GradientContainer({key}) : super(key: key);
  const GradientContainer(this.startColor, this.endColor, {super.key});

  const GradientContainer.purple({super.key})
      : startColor = Colors.purple,
        endColor = Colors.pink;

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
