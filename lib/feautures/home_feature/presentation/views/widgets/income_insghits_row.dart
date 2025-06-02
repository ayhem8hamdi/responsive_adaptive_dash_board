import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/chart_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/dot_item.dart';

class IncomeInsightsRow extends StatelessWidget {
  const IncomeInsightsRow({
    super.key,
    required this.chartModel,
  });
  final ChartModel chartModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Dotitem(color: chartModel.color),
        const SizedBox(width: 10),
        Text(
          chartModel.type,
          style: AppStyles.styleRegular16,
        ),
        const Spacer(),
        Text(
          chartModel.pourcentage,
          style: AppStyles.styleMedium20
              .copyWith(color: AppColors.kSecondaryColor),
        )
      ],
    );
  }
}
