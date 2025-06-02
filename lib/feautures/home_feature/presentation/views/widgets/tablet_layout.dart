import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_widget.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/card_section.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/income_section.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/quick_invoice_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(child: CustomDrawer()),
      Expanded(
          flex: 3,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TabletLayoutbody()))
    ]);
  }
}

class TabletLayoutbody extends StatelessWidget {
  const TabletLayoutbody({super.key, this.isMobile = false});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: AllExpansesWidget(
          isMobile: isMobile,
        )),
        const SliverToBoxAdapter(child: QuickInvoiceWidget()),
        const SliverToBoxAdapter(
          child: CardSection(
            istablet: true,
          ),
        ),
        const SliverToBoxAdapter(
          child: IncomeSection(),
        )
      ],
    );
  }
}
