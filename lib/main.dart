import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/dhashboard_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const DashBoard();
      }));
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dhashboardscreen(),
    );
  }
}
