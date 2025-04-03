import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

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
            child: SvgPicture.asset(
              image,
              color: const Color(0xFF4EB7F2),
            )),
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
