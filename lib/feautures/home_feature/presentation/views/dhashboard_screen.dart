import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/dashboard_screen_body.dart';

class Dhashboardscreen extends StatefulWidget {
  const Dhashboardscreen({super.key});

  @override
  State<Dhashboardscreen> createState() => _DhashboardscreenState();
}

class _DhashboardscreenState extends State<Dhashboardscreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    return Scaffold(
      key: _scaffoldKey,
      appBar: isMobile
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0XFFFAFAFA),
              leading: IconButton(
                icon: const Icon(Icons.menu, color: AppColors.kPrimaryColor),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            )
          : null,
      drawer: isMobile
          ? Drawer(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const CustomDrawer(),
              ),
            )
          : null,
      backgroundColor: const Color(0XFFF7F9FA),
      body: const DashboardScreenBody(),
    );
  }
}
