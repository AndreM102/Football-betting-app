import 'package:flutter/material.dart';
import 'package:football_betting_flutter/ui_kit/_ui_kit.dart';
class AppTheme {
  const AppTheme._();


  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: LightThemeColor.red,
      ),
    ),
    scaffoldBackgroundColor: LightThemeColor.primaryLight,
    textTheme: TextTheme(
      displayLarge: AppTextStyle.h1Style,
      displayMedium: AppTextStyle.h2Style,
      displaySmall: AppTextStyle.h3Style,
      headlineMedium: AppTextStyle.h4StyleLight,
      headlineSmall: AppTextStyle.h5StyleLight,
      bodyLarge: AppTextStyle.bodyTextLight,
      titleMedium: AppTextStyle.subtitleLight,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: LightThemeColor.yellow,
      ),
    ),
      scaffoldBackgroundColor: DarkThemeColor.primaryDark,
    textTheme: TextTheme(
      displayLarge: AppTextStyle.h1Style.copyWith(color: Colors.white),
      displayMedium: AppTextStyle.h2Style.copyWith(color: Colors.white),
      displaySmall: AppTextStyle.h3Style.copyWith(color: Colors.white),
      headlineMedium: AppTextStyle.h4StyleLight.copyWith(color: Colors.white),
      headlineSmall: AppTextStyle.h5StyleLight.copyWith(color: Color(0xFF808697),),
      bodyLarge: AppTextStyle.bodyTextLight.copyWith(color: Colors.white),
      titleMedium: AppTextStyle.subtitleLight.copyWith(color: Colors.black),
    ),
  );
}
