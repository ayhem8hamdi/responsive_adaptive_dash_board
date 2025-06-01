import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/transaction_history_list.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: TransactionHistoryList(),
        ),
      ],
    );
  }
}
