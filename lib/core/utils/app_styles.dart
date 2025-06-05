import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/responsive_font_size.dart';

abstract class AppStyles {
  static final TextStyle baseMontserrat = GoogleFonts.montserrat();

  static TextStyle styleRegular16(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kPrimaryColor,
      fontSize: responsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return baseMontserrat.copyWith(
      color: const Color.fromARGB(255, 20, 84, 121),
      fontSize: responsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kPrimaryColor,
      fontSize: responsiveFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kThirdColor,
      fontSize: responsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kSecondaryColor,
      fontSize: responsiveFontSize(context, fontsize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kThirdColor,
      fontSize: responsiveFontSize(context, fontsize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kSecondaryColor,
      fontSize: responsiveFontSize(context, fontsize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kSecondaryColor,
      fontSize: responsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return baseMontserrat.copyWith(
      color: AppColors.kThirdColor,
      fontSize: responsiveFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w500,
    );
  }
}
