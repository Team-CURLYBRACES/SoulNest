import 'package:flutter/material.dart';

TextTheme customTextTheme() {
  return const TextTheme(
    displayLarge: TextStyle(
        fontSize: 26, color: Colors.black, fontWeight: FontWeight.w800),
    displayMedium: TextStyle(
        fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
    displaySmall: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700),
    headlineMedium: TextStyle(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    titleLarge: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
    titleSmall: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
    labelLarge: TextStyle(fontSize: 20, color: Colors.black),
  );
}
