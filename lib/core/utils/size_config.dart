import 'package:flutter/material.dart';

class SizeConfig {
  static const int desktop = 1140;
  static const int tablet = 800;

  static late double width, height;
  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
// we should call this class in splash screen : SizeConfig.init(context)