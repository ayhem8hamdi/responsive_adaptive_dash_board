import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/desktop_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: DesktopBody()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
