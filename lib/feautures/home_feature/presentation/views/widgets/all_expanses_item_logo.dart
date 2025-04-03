import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class AllExpansesItemHeader extends StatelessWidget {
  const AllExpansesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 60,
            height: 60,
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xFFFAFAFA),
            ),
            child: Center(
              child: SvgPicture.asset(
                image,
                // ignore: deprecated_member_use
                color: const Color(0xFF4EB7F2),
              ),
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
