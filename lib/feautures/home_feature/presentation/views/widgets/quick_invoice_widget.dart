import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/last_transaction_section.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/quickinvoice_list_builder.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 14,
          ),
          LatestTransactionWidget(),
          SizedBox(
            height: 15,
          ),
          QuickInvoiceListBuilder(),
          SizedBox(
            height: 20,
          ),
          CustomHorizLine(),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            text: 'Type customer name',
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: AppStyles.styleRegular16.copyWith(color: Color(0XFFAAAAAA)),
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
        borderSide: BorderSide(color: Color(0XFFFAFAFA)));
  }
}
