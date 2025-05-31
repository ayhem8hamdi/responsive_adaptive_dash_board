import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle:
            AppStyles.styleRegular16.copyWith(color: const Color(0XFFAAAAAA)),
        contentPadding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
        fillColor: const Color(0XFFFAFAFA),
        filled: true,
        border: customBorder(),
        enabledBorder: customBorder(),
        disabledBorder: customBorder(),
        focusedBorder: customBorder(),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Color(0XFFFAFAFA)));
  }
}
