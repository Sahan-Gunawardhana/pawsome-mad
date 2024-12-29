import 'package:flutter/material.dart';

class CusOutlinedButtonTheme {
  CusOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 2.0,
      foregroundColor: Colors.blue,
      side: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 2.0,
      foregroundColor: Colors.blue,
      side: BorderSide(
        color: Colors.blueAccent,
        width: 1.5,
      ),
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );

}