import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/card_item.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: List.generate(
            3,
            (index) => const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: MyCardItem(),
                )));
  }
}
