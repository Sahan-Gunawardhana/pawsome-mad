import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

class CusElevatedButtonTheme{
  CusElevatedButtonTheme._(); //set to private to avoid instances

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 8.0,
      foregroundColor: AppColors.onPrimaryContainerLight,
      backgroundColor: AppColors.primaryContainerLight,
      disabledForegroundColor: Colors.grey.withOpacity(0.38),
      disabledBackgroundColor: Colors.grey.withOpacity(0.12),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 8.0,
      foregroundColor: AppColors.onPrimaryContainerDark,
      backgroundColor: AppColors.primaryContainerDark,
      disabledForegroundColor: Colors.grey.withOpacity(0.38),
      disabledBackgroundColor: Colors.grey.withOpacity(0.12),
      side: const BorderSide(
        color: Colors.black,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      textStyle: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );
}