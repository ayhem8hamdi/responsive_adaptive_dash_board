import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Incomechart extends StatefulWidget {
  const Incomechart({super.key});

  @override
  State<Incomechart> createState() => _IncomechartState();
}

class _IncomechartState extends State<Incomechart> {
  int? touchedIndex;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          touchCallback: (event, response) {
            setState(() {
              if (!event.isInterestedForInteractions ||
                  response == null ||
                  response.touchedSection == null) {
                touchedIndex = -1;
              } else {
                touchedIndex = response.touchedSection!.touchedSectionIndex;
              }
            });
          },
        ),
        sections: List.generate(4, (index) {
          final isTouched = index == touchedIndex;
          final double radius = isTouched ? 60 : 50;

          final colors = [
            const Color(0XFF208CC8),
            const Color(0XFF4EB7F2),
            const Color(0XFF064061),
            const Color(0XFFE2DECD),
          ];

          final values = [40.0, 25.0, 20.0, 22.0];

          return PieChartSectionData(
            value: values[index],
            color: colors[index],
            radius: radius,
            showTitle: false,
          );
        }),
      ),
    );
  }
}
