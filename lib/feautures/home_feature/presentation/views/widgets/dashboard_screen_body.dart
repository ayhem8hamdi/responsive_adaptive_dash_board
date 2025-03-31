import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/tablet_layout.dart';

class DashboardScreenBody extends StatelessWidget {
  const DashboardScreenBody({super.key});
  //lazy building for layouts .
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout());
  }
}
