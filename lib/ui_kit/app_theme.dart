import 'package:flutter/material.dart';
import 'package:football_betting_flutter/ui_kit/_ui_kit.dart';
class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    indicatorColor: LightThemeColor.red
  );

  static ThemeData darkTheme = ThemeData(
      indicatorColor: LightThemeColor.yellow
  );
}
