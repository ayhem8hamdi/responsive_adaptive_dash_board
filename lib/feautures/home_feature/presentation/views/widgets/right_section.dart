import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/card_section.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_section.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CardSection(),
          IncomeSection(),
        ],
      ),
    );
  }
}
