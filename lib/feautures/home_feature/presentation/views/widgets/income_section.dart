import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/chart_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_chart_header.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_chart_item.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const IncomeSectionBody(),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [IncomeSectionHeader(), SizedBox(height: 16), ChartSection()],
    );
  }
}

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: const AspectRatio(
            aspectRatio: 1,
            child: Incomechart(),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(child: IncomeInsights())
      ],
    );
  }
}

class IncomeInsights extends StatelessWidget {
  const IncomeInsights({super.key});
  static const List<ChartModel> l = [
    ChartModel(color: Color(0XFF208CC8), type: 'Design ', pourcentage: '40%'),
    ChartModel(color: Color(0XFF4EB7F2), type: 'product', pourcentage: '25%'),
    ChartModel(color: Color(0XFF064061), type: 'royalti', pourcentage: '20%'),
    ChartModel(color: Color(0XFFE2DECD), type: 'Other', pourcentage: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(4, (index) => IncomeInsightsRow(chartModel: l[index])),
    );
  }
}

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

class Dotitem extends StatelessWidget {
  const Dotitem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
    );
  }
}
