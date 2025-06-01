import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedText(
          text: 'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        FittedText(
            text: 'See all',
            style: AppStyles.styleMedium20
                .copyWith(color: AppColors.kSecondaryColor, fontSize: 16))
      ],
    );
  }
}
