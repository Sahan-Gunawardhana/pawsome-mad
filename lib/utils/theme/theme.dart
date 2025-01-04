import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';
import 'package:pawsome_v2/utils/theme/custom_themes/appbar_theme.dart';
import 'package:pawsome_v2/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:pawsome_v2/utils/theme/custom_themes/chip_theme.dart';
import 'package:pawsome_v2/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:pawsome_v2/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:pawsome_v2/utils/theme/custom_themes/text_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // Enable Material 3 design system
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      // Headline Text Styles
      headlineLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black,
      ),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black,
      ),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black,
      ),

      // Title Text Styles
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black,
      ),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black,
      ),
      titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w200, color: Colors.black,
      ),

      // Body Text Styles
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black,
      ),
      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.7),
      ),
      bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black,
      ),

      // Label Text Styles
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black,
      ),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black,
      ),
      labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black,
      ),
    ),
    brightness: Brightness.light,
    // Set brightness for light mode
    primaryColor: AppColors.primaryContainerLight,
    // Primary color for light theme
    scaffoldBackgroundColor: AppColors.backgroundLight, // Light theme background color
    elevatedButtonTheme: CusElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CusAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CusBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: CusOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CusTextFormFieldTheme.lightInputDecorationTheme,
      chipTheme: CusChipTheme.lightChipThemeData
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.robotoTextTheme().copyWith(
      // Headline Text Styles
      headlineLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white,
      ),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white,
        ),
      headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.w300, color: Colors.white,
      ),

      // Title Text Styles
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white,
      ),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white,
      ),
      titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white,
      ),

      // Body Text Styles
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white,
      ),
      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white,
      ),
      bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white,
      ),

      // Label Text Styles
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white,
      ),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white,
      ),
      labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white,
      ),
    ),
    brightness: Brightness.dark,
    // Set brightness for dark mode
    primaryColor: AppColors.primaryContainerLight,
    // Primary color for dark theme
    scaffoldBackgroundColor: AppColors.backgroundDark,
    elevatedButtonTheme: CusElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: CusAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: CusBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: CusOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CusTextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: CusChipTheme.darkChipThemeData
  );
}