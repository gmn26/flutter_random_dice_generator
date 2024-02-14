import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';
// import 'package:first_app/styled_text.dart';

const gradientBegin = Alignment.topCenter;
const gradientEnd = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors1, this.colors2, {super.key});
  final Color colors1;
  final Color colors2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: gradientBegin,
        end: gradientEnd,
        colors: [colors1, colors2],
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
