import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/desktop_body.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/right_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 8, child: DesktopBodyAndRightSection()),
      ],
    );
  }
}

class DesktopBodyAndRightSection extends StatelessWidget {
  const DesktopBodyAndRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            children: [
              Expanded(flex: 5, child: DesktopBody()),
              SizedBox(
                width: 24,
              ),
              Expanded(flex: 3, child: RightSection()),
              SizedBox(
                width: 24,
              )
            ],
          ),
        ),
      ],
    );
  }
}
