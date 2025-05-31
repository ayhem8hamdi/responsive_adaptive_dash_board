import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_input_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/last_transaction_section.dart';

class FormRowWidget extends StatelessWidget {
  const FormRowWidget({super.key, required this.userInputModel});
  final UserInputModel userInputModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceMeduimTitles(
          text: userInputModel.title,
        ),
        const SizedBox(
          height: 14,
        ),
        CustomTextField(
          text: userInputModel.textHint,
        )
      ],
    );
  }
}
