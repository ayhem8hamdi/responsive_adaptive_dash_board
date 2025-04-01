import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';

abstract class AppStyles {
  static TextStyle styleRegular16 = GoogleFonts.montserrat(
    color: AppColors.kPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMeduim16 = GoogleFonts.montserrat(
    color: AppColors.kPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleSemiBold16 = GoogleFonts.montserrat(
    color: AppColors.kPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleSemiBold20 = GoogleFonts.montserrat(
    color: AppColors.kPrimaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular12 = GoogleFonts.montserrat(
    color: AppColors.kThirdColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleSemiBold24 = GoogleFonts.montserrat(
    color: AppColors.kSecondaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular14 = GoogleFonts.montserrat(
    color: AppColors.kThirdColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleSemiBold18 = GoogleFonts.montserrat(
    color: AppColors.kSecondaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16 = GoogleFonts.montserrat(
    color: AppColors.kSecondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleMeduim20 = GoogleFonts.montserrat(
    color: AppColors.kThirdColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
