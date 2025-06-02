import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_chart_header.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_chart_item.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_insights.dart';

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
          child: AspectRatio(
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
