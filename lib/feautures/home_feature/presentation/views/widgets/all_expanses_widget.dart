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
    return Row(
      children: [
        AllExpansesCustomCard(),
        SizedBox(
          width: 10,
        ),
        AllExpansesCustomCard(),
        SizedBox(
          width: 10,
        ),
        AllExpansesCustomCard()
      ],
    );
  }
}

class AllExpansesCustomCard extends StatelessWidget {
  const AllExpansesCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: const Color(0xFFF1F1F1),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    color: const Color(0xFFAAAAAA),
                  ),
                  child: SvgPicture.asset(AppAssets.income)),
              const Spacer(),
              Transform.rotate(
                  angle: 3.1416,
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColors.kPrimaryColor,
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('balance'),
          SizedBox(height: 5),
          Text('April 2022'),
          SizedBox(
            height: 9,
          ),
          Text('\$20,129')
        ],
      ),
    ));
  }
}
