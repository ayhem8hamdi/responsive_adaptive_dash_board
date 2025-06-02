import 'package:flutter/material.dart';

class Dotitem extends StatelessWidget {
  const Dotitem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
    );
  }
}
