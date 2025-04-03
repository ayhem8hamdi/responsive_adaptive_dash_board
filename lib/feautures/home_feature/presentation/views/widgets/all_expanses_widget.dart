import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_header.dart';

class AllExpansesWidget extends StatelessWidget {
  const AllExpansesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        children: [AllExpansesHeader(), AllExpansesCard()],
      ),
    );
  }
}

class AllExpansesCard extends StatelessWidget {
  const AllExpansesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          AllExpansesCustomCard(
            image: AppAssets.income,
          ),
          SizedBox(
            width: 10,
          ),
          AllExpansesCustomCard(image: AppAssets.income),
          SizedBox(
            width: 10,
          ),
          AllExpansesCustomCard(image: AppAssets.outcome)
        ],
      ),
    );
  }
}

class AllExpansesCustomCard extends StatelessWidget {
  const AllExpansesCustomCard({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
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
          AllExpansesItemLogo(
            image: image,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('balance'),
          const SizedBox(height: 5),
          const Text('April 2022'),
          const SizedBox(
            height: 9,
          ),
          const Text('\$20,129')
        ],
      ),
    ));
  }
}

class AllExpansesItemLogo extends StatelessWidget {
  const AllExpansesItemLogo({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(9),
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xFFFAFAFA),
            ),
            child: SvgPicture.asset(image)),
        const Spacer(),
        Transform.rotate(
            angle: 3.1416,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.kPrimaryColor,
            ))
      ],
    );
  }
}
