import 'package:flutter/material.dart';

class CusBottomSheetTheme{
  CusBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(
      minWidth: double.infinity
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    )
  );
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(
      minWidth: double.infinity
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    )
  );
}