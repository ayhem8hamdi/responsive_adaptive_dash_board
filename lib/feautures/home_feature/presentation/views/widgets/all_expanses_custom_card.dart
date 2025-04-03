import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/all_expanses_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/active_card_item.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/inactive_card_item.dart';

class AllExpansesCustomCard extends StatelessWidget {
  const AllExpansesCustomCard(
      {super.key, required this.item, required this.isActive});

  final AllExpansesItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? ActiveCardItem(item: item, isActive: isActive)
        : InActiveCardItem(item: item, isActive: isActive);
  }
}
