import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/all_expanses_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_custom_card.dart';

class AllExpansesCards extends StatelessWidget {
  const AllExpansesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          AllExpansesCustomCard(
            image: AppAssets.balance,
            item: AllExpansesItemModel(
                type: 'Balance', date: 'April 2025', price: '\$20,129'),
          ),
          SizedBox(
            width: 10,
          ),
          AllExpansesCustomCard(
              image: AppAssets.income,
              item: AllExpansesItemModel(
                  type: 'Income', date: 'April 2025', price: '\$24,129')),
          SizedBox(
            width: 10,
          ),
          AllExpansesCustomCard(
              image: AppAssets.outcome,
              item: AllExpansesItemModel(
                  type: 'Expanses', date: 'April 2025', price: '\$28,117'))
        ],
      ),
    );
  }
}
