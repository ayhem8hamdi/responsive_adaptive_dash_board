import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_cards.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_header.dart';

class AllExpansesWidget extends StatelessWidget {
  const AllExpansesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        children: [AllExpansesHeader(), AllExpansesCards()],
      ),
    );
  }
}
