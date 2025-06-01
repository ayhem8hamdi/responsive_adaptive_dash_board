import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/transaction_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/transaction_history_item.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  static const List<TransactionModel> transactionList = [
    TransactionModel(
        name: 'Cash Withdrawal', date: '13 Apr, 2022', mount: r'$20,129'),
    TransactionModel(
        name: 'Page project', date: '13 Apr, 2025', mount: r'$2,000'),
    TransactionModel(
        name: 'Mobile App project', date: '3 June, 2025', mount: r'$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList.asMap().entries.map((entry) {
        final index = entry.key;
        final e = entry.value;
        final color =
            index == 0 ? const Color(0XFFF3735E) : const Color(0XFF7DD97B);

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: TransactionHistoryItem(
            transactionModel: e,
            color: color,
          ),
        );
      }).toList(),
    );
  }
}
