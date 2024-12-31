import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

class CusOutlinedButtonTheme {
  CusOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0.0,
      foregroundColor: AppColors.onPrimaryContainerLight,
      side: BorderSide(
        color: Colors.black,
        width: 0.8,
      ),
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0.0,
      foregroundColor: AppColors.onPrimaryContainerDark,
      side: BorderSide(
        color: AppColors.primaryContainerDark,
        width: 0.8,
      ),
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );

}