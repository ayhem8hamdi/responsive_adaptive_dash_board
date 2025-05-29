import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_widget.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/quick_invoice_widget.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpansesWidget()),
        SliverToBoxAdapter(child: QuickInvoiceWidget()),
      ],
    );
  }
}
