import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

abstract class AppStyles {
  static final TextStyle baseMontserrat = GoogleFonts.montserrat();

  static TextStyle styleRegular16 = baseMontserrat.copyWith(
    color: AppColors.kPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleSemiBold16 = baseMontserrat.copyWith(
    color: const Color.fromARGB(255, 20, 84, 121),
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleSemiBold20 = baseMontserrat.copyWith(
    color: AppColors.kPrimaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular12 = baseMontserrat.copyWith(
    color: AppColors.kThirdColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold24 = baseMontserrat.copyWith(
    color: AppColors.kSecondaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular14 = baseMontserrat.copyWith(
    color: AppColors.kThirdColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold18 = baseMontserrat.copyWith(
    color: AppColors.kSecondaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleBold16 = baseMontserrat.copyWith(
    color: AppColors.kSecondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleMedium20 = baseMontserrat.copyWith(
    color: AppColors.kThirdColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
