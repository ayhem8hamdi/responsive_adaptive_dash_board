import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/card_section_body.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key, this.istablet = false});
  final bool istablet;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: istablet == true ? 0 : 20),
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 25, right: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const CardSectionBody(),
    );
  }
}
