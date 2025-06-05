import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/form_section.dart';
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
            height: 3,
          ),
          QuickInvoiceMeduimTitles(
            text: 'Last Transaction',
          ),
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
          FormSection()
        ],
      ),
    );
  }
}
