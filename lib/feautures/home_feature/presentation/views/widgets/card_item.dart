import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/card_item_body.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 259,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppAssets.cardBackground),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
          color: AppColors.kSecondaryColor,
        ),
        child: const CardItemBody(),
      ),
    );
  }
}
