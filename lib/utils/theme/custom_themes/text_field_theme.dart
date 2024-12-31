import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

class CusTextFormFieldTheme{
  CusTextFormFieldTheme._();

  // InputDecorationTheme for light mode adhering to Android guidelines
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.black,
    suffixIconColor: Colors.black,
    labelStyle: GoogleFonts.roboto().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    hintStyle: GoogleFonts.roboto().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    ),
    errorStyle: GoogleFonts.roboto().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.red,
    ),
    floatingLabelStyle: GoogleFonts.roboto().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.onBackgroundLight,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
  );

  // InputDecorationTheme for dark mode adhering to Android guidelines
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.white,
    suffixIconColor: Colors.white,
    labelStyle: GoogleFonts.roboto().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    hintStyle: GoogleFonts.roboto().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    errorStyle: GoogleFonts.roboto().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.red,
    ),
    floatingLabelStyle: GoogleFonts.roboto().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}