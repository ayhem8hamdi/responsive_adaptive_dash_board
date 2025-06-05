import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/transaction_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionModel,
    this.color = const Color(0XFF7DD97B),
  });

  final TransactionModel transactionModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(left: 4, top: 8),
          child: FittedText(
            text: transactionModel.name,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4, left: 4, bottom: 8),
          child: FittedText(
            text: transactionModel.date,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: AppColors.kThirdColor),
          ),
        ),
        trailing: FittedText(
          text: transactionModel.mount,
          style: AppStyles.styleSemiBold20(context).copyWith(color: color),
        ),
      ),
    );
  }
}
