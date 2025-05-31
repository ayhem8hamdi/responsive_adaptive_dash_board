import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

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
        child: const CardItemBody(),
      ),
    );
  }
}

class CardItemBody extends StatelessWidget {
  const CardItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Name card',
            style: AppStyles.styleRegular16,
          ),
          subtitle: Text(
            'Ayhem Hamdi',
            style: AppStyles.styleBold16,
          ),
        )
      ],
    );
  }
}
