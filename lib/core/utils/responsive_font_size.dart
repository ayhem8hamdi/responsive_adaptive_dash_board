import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

double responsiveFontSize(BuildContext context, {required int fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;

  double lowerLimit = fontsize * .8;
  double upperLimit = fontsize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 470;
  } else if (width < SizeConfig.desktop) {
    return width / 970;
  } else {
    return width / 1370;
  }
}
