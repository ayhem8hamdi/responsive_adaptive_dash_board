import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_input_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/form_row.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FormRow(
          userInputModel1: UserInputModel(
              title: 'Customer name', textHint: 'Type customer name'),
          userInputModel2: UserInputModel(
              title: 'Customer Email', textHint: 'Type customer Email'),
        ),
        SizedBox(
          height: 24,
        ),
        FormRow(
          userInputModel1:
              UserInputModel(title: 'Item name', textHint: 'Type item name'),
          userInputModel2: UserInputModel(title: 'Item mount', textHint: 'USD'),
        ),
      ],
    );
  }
}
