import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/inactive_dot_indicator.dart';

class DotsItem extends StatelessWidget {
  const DotsItem({super.key, required this.currentCardIndex});
  final int currentCardIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 4),
                child: DotIndicator(isActive: index == currentCardIndex),
              )),
    );
  }
}
