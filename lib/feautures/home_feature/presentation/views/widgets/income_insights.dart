import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/chart_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_insghits_row.dart';

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
