import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pawsome_v2/bindings/general_bindings.dart';
import 'package:pawsome_v2/utils/constants/colors.dart';

import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: AppColors.surfaceLight,
        body: Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryContainerLight,
          ),
        ),
      ),
    );
  }
}
