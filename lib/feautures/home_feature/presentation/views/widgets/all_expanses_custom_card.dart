import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/all_expanses_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_item_logo.dart';

class AllExpansesCustomCard extends StatelessWidget {
  const AllExpansesCustomCard({super.key, required this.item});

  final AllExpansesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: const Color(0xFFF1F1F1),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            image: item.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            item.type,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 8),
          Text(
            item.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            item.price,
            style: AppStyles.styleSemiBold24,
          )
        ],
      ),
    ));
  }
}
