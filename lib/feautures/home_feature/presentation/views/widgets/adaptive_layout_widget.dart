import 'dart:developer';

import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      log('constrains ${constrains.maxWidth}');
      log('media : ${MediaQuery.of(context).size.width}');
      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1140 && constrains.maxWidth >= 600) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
//1303