import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/transaction_history_list.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        FittedText(
          text: '2 June 2025',
          style: AppStyles.styleMedium20.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryList(),
      ],
    );
  }
}
