import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/dashboard_screen_body.dart';

class Dhashboardscreen extends StatelessWidget {
  const Dhashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFF7F9FA),
      body: DashboardScreenBody(),
    );
  }
}
