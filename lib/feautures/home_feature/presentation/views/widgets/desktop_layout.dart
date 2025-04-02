import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_drawer.dart';

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

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [AllExpansesWidget()],
    );
  }
}

class AllExpansesWidget extends StatelessWidget {
  const AllExpansesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        children: [AllExpansesHeader()],
      ),
    );
  }
}

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expanses',
          style: AppStyles.styleBold16.copyWith(color: AppColors.kPrimaryColor),
        ),
        const Spacer(),
      ],
    );
  }
}
