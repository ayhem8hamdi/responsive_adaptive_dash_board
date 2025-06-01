import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/transaction_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        FittedText(
          text: '2 June 2025',
          style: AppStyles.styleMedium20.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryList()
      ],
    );
  }
}

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        transactionModel.name,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        transactionModel.date,
        style: AppStyles.styleRegular16.copyWith(color: AppColors.kThirdColor),
      ),
      trailing: Text(
        transactionModel.mount,
        style:
            AppStyles.styleSemiBold20.copyWith(color: const Color(0XFF7DD97B)),
      ),
    );
  }
}

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});
  static const List<TransactionModel> transactionList = [
    TransactionModel(
        name: 'Cash Withdrawal', date: '13 Apr, 2022 ', mount: r'$20,129'),
    TransactionModel(
        name: 'Landing Page project',
        date: '13 Apr, 2025 at 3:30 PM',
        mount: r'$2,000'),
    TransactionModel(
        name: 'Juni Mobile App project',
        date: '3 June, 2025 at 6:30 PM',
        mount: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList
          .map((e) => TransactionHistoryItem(transactionModel: e))
          .toList(),
    );
  }
}
