import 'package:animooo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle poppins700PrimaryColor30 = const TextStyle(
    fontSize: 30.0,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );

  static TextStyle poppins400GreyColor14 = const TextStyle(
    fontSize: 14.0,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
  );

  static TextStyle poppins600WhiteColor15 = const TextStyle(
    fontSize: 15.0,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );
}
