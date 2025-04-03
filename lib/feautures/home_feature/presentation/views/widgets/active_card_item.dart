import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/all_expanses_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_item_logo.dart';

class ActiveCardItem extends StatelessWidget {
  const ActiveCardItem({super.key, required this.item, required this.isActive});
  final AllExpansesItemModel item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            image: item.image,
            isActive: true,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            item.type,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            item.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0XFFFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            item.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
