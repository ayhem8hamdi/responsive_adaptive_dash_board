import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';

class QuickInvoiceButtonItem extends StatelessWidget {
  const QuickInvoiceButtonItem(
      {super.key, required this.color, required this.text});
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: FittedText(
          text: text,
          style: AppStyles.styleSemiBold18(context).copyWith(
              color: color == const Color(0XFFFFFFFF)
                  ? AppColors.kSecondaryColor
                  : const Color(0XFFFFFFFF)),
        ),
      ),
    );
  }
}
