import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class AllExpansesDate extends StatelessWidget {
  const AllExpansesDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xFFF1F1F1),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium20(context)
                .copyWith(fontSize: 16, color: AppColors.kPrimaryColor),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.5707633,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: AppColors.kPrimaryColor,
              ))
        ],
      ),
    );
  }
}
