import 'package:flutter/material.dart';
import 'package:pawsome_v2/utils/theme/custom_themes/appbar_theme.dart';
import 'theme/theme.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
