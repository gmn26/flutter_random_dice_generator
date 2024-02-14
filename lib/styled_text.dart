import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
    );
  }
}
