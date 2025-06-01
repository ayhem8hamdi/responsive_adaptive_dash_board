import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/dots_item.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/my_card_page_view.dart';

class MyCardUpperItems extends StatefulWidget {
  const MyCardUpperItems({super.key});

  @override
  State<MyCardUpperItems> createState() => _MyCardUpperItemsState();
}

class _MyCardUpperItemsState extends State<MyCardUpperItems> {
  int currentCardIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentCardIndex = pageController.page!.toInt();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20
              .copyWith(color: AppColors.kPrimaryColor),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          controller: pageController,
        ),
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: DotsItem(
            currentCardIndex: currentCardIndex,
          ),
        )
      ],
    );
  }
}
