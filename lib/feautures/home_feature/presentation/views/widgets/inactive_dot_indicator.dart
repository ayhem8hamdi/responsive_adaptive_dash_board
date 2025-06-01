import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? AppColors.kSecondaryColor : const Color(0XFFE7E7E7),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
