import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_date.dart';
import 'package:fl_chart/fl_chart.dart';

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
      children: [
        IncomeSectionHeader(),
        SizedBox(height: 12),
      ],
    );
  }
}

class Incomechart extends StatelessWidget {
  const Incomechart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getPieChartData());
  }

  PieChartData getPieChartData() {
    return PieChartData(sections: [
      PieChartSectionData(value: 40, color: const Color(0XFF208CC8)),
      PieChartSectionData(value: 25, color: const Color(0XFF4EB7F2)),
      PieChartSectionData(value: 20, color: const Color(0XFF064061)),
      PieChartSectionData(value: 22, color: const Color(0XFFE2DECD))
    ]);
  }
}

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        const AllExpansesDate()
      ],
    );
  }
}
