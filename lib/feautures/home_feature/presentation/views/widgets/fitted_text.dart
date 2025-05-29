import 'package:flutter/material.dart';

class FittedText extends StatelessWidget {
  const FittedText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.centerLeft,
      fit: BoxFit.scaleDown,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
