import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/my_upper_items.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/transaction_history_section.dart';

class CardSectionBody extends StatelessWidget {
  const CardSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardUpperItems(),
        SizedBox(height: 20),
        CustomHorizLine(),
        SizedBox(height: 20),
        TransactionHistorySection(),
      ],
    );
  }
}
