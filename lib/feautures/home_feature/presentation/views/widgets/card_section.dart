import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/my_upper_items.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/transaction_history_header.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20, top: 20),
        padding: const EdgeInsets.only(
            top: 25, bottom: 25, left: 25, right: 25 - 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: const CardSectionBody());
  }
}

class CardSectionBody extends StatelessWidget {
  const CardSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardUpperItems(),
        SizedBox(
          height: 20,
        ),
        CustomHorizLine(),
        SizedBox(
          height: 20,
        ),
        TransactionHistorySection()
      ],
    );
  }
}

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TransactionHistoryHeader()],
    );
  }
}
