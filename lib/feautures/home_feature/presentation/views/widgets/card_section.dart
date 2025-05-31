import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 20),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedText(text: 'My Card', style: AppStyles.styleSemiBold20),
          const SizedBox(
            height: 12,
          ),
          const MyCardItem()
        ],
      ),
    );
  }
}

class MyCardItem extends StatelessWidget {
  const MyCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AppAssets.cardBackground)),
            borderRadius: BorderRadius.circular(12),
            color: AppColors.kSecondaryColor),
      ),
    );
  }
}
