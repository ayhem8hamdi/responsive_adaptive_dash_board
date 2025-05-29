import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class QuickInvoiceMeduimTitles extends StatelessWidget {
  const QuickInvoiceMeduimTitles({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.styleRegular16,
    );
  }
}
