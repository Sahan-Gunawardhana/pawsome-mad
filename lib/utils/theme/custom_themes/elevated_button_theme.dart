import 'package:flutter/material.dart';

class CusElevatedButtonTheme{
  CusElevatedButtonTheme._(); //set to private to avoid instances

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2.0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey.withOpacity(0.38),
      disabledBackgroundColor: Colors.grey.withOpacity(0.12),
      side: const BorderSide(
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2.0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey.withOpacity(0.38),
      disabledBackgroundColor: Colors.grey.withOpacity(0.12),
      side: const BorderSide(
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}