import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/quick_invoice_button_item.dart';

class QuickInvoiceButtonsSection extends StatelessWidget {
  const QuickInvoiceButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: QuickInvoiceButtonItem(
              color: Color(0XFFFFFFFF), text: 'Add more details'),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: QuickInvoiceButtonItem(
                color: Color(0XFF4EB7F2), text: 'Send Money')),
      ],
    );
  }
}
