import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_input_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_text_field.dart';
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
          GridItemBuilder()
        ],
      ),
    );
  }
}

class QuickInvoiceGridItem extends StatelessWidget {
  const QuickInvoiceGridItem({
    super.key,
    required this.userInputModel,
  });
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

class GridItemBuilder extends StatelessWidget {
  const GridItemBuilder({super.key});
  static const fields = [
    UserInputModel(title: 'Customer name', textHint: 'Type customer name'),
    UserInputModel(title: 'Customer Email', textHint: 'Type customer email'),
    UserInputModel(title: 'Item name', textHint: 'Type Item name'),
    UserInputModel(title: 'Item mount', textHint: 'Type Item mount'),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: fields.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 24,
          childAspectRatio: 4,
        ),
        itemBuilder: (context, index) =>
            QuickInvoiceGridItem(userInputModel: fields[index]));
  }
}
