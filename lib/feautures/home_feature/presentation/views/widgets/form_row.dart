import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_input_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/form_row_widget.dart';

class FormRow extends StatelessWidget {
  const FormRow(
      {super.key,
      required this.userInputModel1,
      required this.userInputModel2});
  final UserInputModel userInputModel1;
  final UserInputModel userInputModel2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: FormRowWidget(
                userInputModel: UserInputModel(
                    title: userInputModel1.title,
                    textHint: userInputModel1.textHint))),
        Expanded(
            child: FormRowWidget(
                userInputModel: UserInputModel(
                    title: userInputModel2.title,
                    textHint: userInputModel2.textHint))),
      ],
    );
  }
}
