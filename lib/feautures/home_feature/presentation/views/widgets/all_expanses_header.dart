import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_date.dart';

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text(
            'All Expanses',
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          const AllExpansesDate()
        ],
      ),
    );
  }
}
