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
        headlineLarge: TextStyle(
            fontSize: 32, // Large headline
            fontWeight: FontWeight.w400, // Regular
            letterSpacing: 0.0,
            color: Colors.black,
        ),
        headlineMedium: TextStyle(
            fontSize: 28, // Medium headline
            fontWeight: FontWeight.w400, // Regular
            letterSpacing: 0.0,
            color: Colors.black,
        ),
        headlineSmall: TextStyle(
            fontSize: 24, // Small headline
            fontWeight: FontWeight.w400, // Regular
            letterSpacing: 0.0,
            color: Colors.black,
        ),

        // Title Text Styles
        titleLarge: TextStyle(
            fontSize: 22, // Large title
            fontWeight: FontWeight.w400, // Regular
            letterSpacing: 0.0,
            color: Colors.black,
        ),
        titleMedium: TextStyle(
            fontSize: 16, // Medium title
            fontWeight: FontWeight.w500, // Medium
            letterSpacing: 0.1,
            color: Colors.black,
        ),
        titleSmall: TextStyle(
            fontSize: 14, // Small title
            fontWeight: FontWeight.w500, // Medium
            letterSpacing: 0.1,
            color: Colors.black,
        ),

        // Body Text Styles
        bodyLarge: TextStyle(
            fontSize: 16, // Large body
            fontWeight: FontWeight.w400, // Regular
            letterSpacing: 0.15,
            color: Colors.black,
        ),
        bodyMedium: TextStyle(
            fontSize: 14, // Medium body
            fontWeight: FontWeight.w400, // Regular
            letterSpacing: 0.25,
            color: Colors.black,
        ),
        bodySmall: TextStyle(
            fontSize: 12, // Small body
            fontWeight: FontWeight.w400, // Regular
            letterSpacing: 0.4,
            color: Colors.black,
        ),

        // Label Text Styles
        labelLarge: TextStyle(
            fontSize: 14, // Large label
            fontWeight: FontWeight.w500, // Medium
            letterSpacing: 0.1,
            color: Colors.black,
        ),
        labelMedium: TextStyle(
            fontSize: 12, // Medium label
            fontWeight: FontWeight.w500, // Medium
            letterSpacing: 0.5,
            color: Colors.black,
        ),
        labelSmall: TextStyle(
            fontSize: 11, // Small label
            fontWeight: FontWeight.w500, // Medium
            letterSpacing: 0.5,
            color: Colors.black,
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
          headlineLarge: TextStyle(
              fontSize: 32, // Large headline
              fontWeight: FontWeight.w400, // Regular
              letterSpacing: 0.0,
              color: Colors.white, // Adjusted for dark theme
          ),
          headlineMedium: TextStyle(
              fontSize: 28, // Medium headline
              fontWeight: FontWeight.w400, // Regular
              letterSpacing: 0.0,
              color: Colors.white, // Adjusted for dark theme
          ),
          headlineSmall: TextStyle(
              fontSize: 24, // Small headline
              fontWeight: FontWeight.w400, // Regular
              letterSpacing: 0.0,
              color: Colors.white, // Adjusted for dark theme
          ),

          // Title Text Styles
          titleLarge: TextStyle(
              fontSize: 22, // Large title
              fontWeight: FontWeight.w400, // Regular
              letterSpacing: 0.0,
              color: Colors.white, // Adjusted for dark theme
          ),
          titleMedium: TextStyle(
              fontSize: 16, // Medium title
              fontWeight: FontWeight.w500, // Medium
              letterSpacing: 0.1,
              color: Colors.white.withOpacity(0.9), // Softer for medium emphasis
          ),
          titleSmall: TextStyle(
              fontSize: 14, // Small title
              fontWeight: FontWeight.w500, // Medium
              letterSpacing: 0.1,
              color: Colors.white.withOpacity(0.9), // Softer for medium emphasis
          ),

          // Body Text Styles
          bodyLarge: TextStyle(
              fontSize: 16, // Large body
              fontWeight: FontWeight.w400, // Regular
              letterSpacing: 0.15,
              color: Colors.white.withOpacity(0.9), // High-emphasis body text
          ),
          bodyMedium: TextStyle(
              fontSize: 14, // Medium body
              fontWeight: FontWeight.w400, // Regular
              letterSpacing: 0.25,
              color: Colors.white.withOpacity(0.8), // Medium-emphasis body text
          ),
          bodySmall: TextStyle(
              fontSize: 12, // Small body
              fontWeight: FontWeight.w400, // Regular
              letterSpacing: 0.4,
              color: Colors.white.withOpacity(0.7), // Low-emphasis body text
          ),

          // Label Text Styles
          labelLarge: TextStyle(
              fontSize: 14, // Large label
              fontWeight: FontWeight.w500, // Medium
              letterSpacing: 0.1,
              color: Colors.white.withOpacity(0.9), // High-emphasis label
          ),
          labelMedium: TextStyle(
              fontSize: 12, // Medium label
              fontWeight: FontWeight.w500, // Medium
              letterSpacing: 0.5,
              color: Colors.white.withOpacity(0.8), // Medium-emphasis label
          ),
          labelSmall: TextStyle(
              fontSize: 11, // Small label
              fontWeight: FontWeight.w500, // Medium
              letterSpacing: 0.5,
              color: Colors.white.withOpacity(0.7), // Low-emphasis label
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