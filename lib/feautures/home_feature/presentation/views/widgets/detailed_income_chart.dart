import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class Detailedincomechart extends StatefulWidget {
  const Detailedincomechart({super.key});

  @override
  State<Detailedincomechart> createState() => _DetailedincomechartState();
}

class _DetailedincomechartState extends State<Detailedincomechart> {
  int? touchedIndex = -1;

  final List<String> labels = ['Design', 'Product', 'Royalty', 'Other'];
  final List<double> values = [40.0, 25.0, 20.0, 22.0];
  final List<Color> colors = [
    const Color(0XFF208CC8),
    const Color(0XFF4EB7F2),
    const Color(0XFF064061),
    const Color(0XFFE2DECD),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest.shortestSide;
        final baseRadius = size / 4;
        final centerTextSize = size / 15;

        return Stack(
          alignment: Alignment.center,
          children: [
            PieChart(
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
                        touchedIndex =
                            response.touchedSection!.touchedSectionIndex;
                      }
                    });
                  },
                ),
                sections: List.generate(values.length, (index) {
                  final isTouched = index == touchedIndex;
                  final double radius =
                      isTouched ? baseRadius + 10 : baseRadius;

                  return PieChartSectionData(
                    value: values[index],
                    title: '${values[index]}%',
                    color: colors[index],
                    radius: radius,
                    showTitle: !isTouched,
                    titleStyle: AppStyles.styleSemiBold16(context).copyWith(
                      color: Colors.white,
                      fontSize: centerTextSize * 0.8,
                    ),
                  );
                }),
              ),
            ),
            if (touchedIndex != null && touchedIndex != -1)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    labels[touchedIndex!],
                    style: AppStyles.styleSemiBold16(context).copyWith(
                      color: const Color(0XFF064061),
                      fontSize: centerTextSize,
                    ),
                  ),
                  Text(
                    '${values[touchedIndex!]}%',
                    style: AppStyles.styleSemiBold16(context).copyWith(
                      color: const Color(0XFF208CC8),
                      fontSize: centerTextSize * 0.9,
                    ),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
