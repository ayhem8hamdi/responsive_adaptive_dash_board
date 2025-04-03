import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/all_expanses_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_custom_card.dart';

class AllExpansesCards extends StatelessWidget {
  const AllExpansesCards({super.key});
  static const List<AllExpansesItemModel> items = [
    AllExpansesItemModel(
        image: AppAssets.balance,
        type: 'Balance',
        date: 'April 2025',
        price: '\$20,129'),
    AllExpansesItemModel(
        image: AppAssets.income,
        type: 'Income',
        date: 'April 2025',
        price: '\$24,129'),
    AllExpansesItemModel(
        image: AppAssets.outcome,
        type: 'Outcome',
        date: 'April 2025',
        price: '\$28,117'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 17, left: 17),
      child: Row(
          children: items.map((e) => AllExpansesCustomCard(item: e)).toList()),
    );
  }
}
