import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

class AllExpansesItemHeader extends StatelessWidget {
  const AllExpansesItemHeader(
      {super.key, required this.image, this.isActive = false});

  final String image;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width - 45;
    return Row(
      children: [
        Container(
          width: width < 450 ? 40 : 60,
          height: width < 450 ? 40 : 60,
          padding: width < 450 ? EdgeInsets.zero : const EdgeInsets.all(3),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: isActive == false
                ? const Color(0xFFFAFAFA)
                : Colors.white.withOpacity(0.10000000149011612),
          ),
          child: Center(
            child: SvgPicture.asset(
              width: width < 450 ? 24 : 34, //24
              height: width < 450 ? 24 : 34,
              image,
              color: isActive == false ? const Color(0xFF4EB7F2) : Colors.white,
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: 3.1416,
            child: Icon(
              size: width < 450 ? 14 : 24,
              Icons.arrow_back_ios_new_outlined,
              color: isActive == false ? AppColors.kPrimaryColor : Colors.white,
            ))
      ],
    );
  }
}
