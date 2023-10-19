import 'package:flutter/material.dart';

class AppTextStyle {
  const AppTextStyle._();

  static TextStyle h1Style = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: "Teko",
  );

  static TextStyle h2Style = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: "Teko",
  );

  static TextStyle h3Style = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: "Inter",
  );

  static TextStyle h4StyleLight = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Color(0xFF808697),
  );

  static TextStyle h5StyleLight = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
  );

  static TextStyle bodyTextLight = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );

  static TextStyle subtitleLight = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.black45,
  );
}
