// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

TextTheme customTextTheme() {
  return const TextTheme(
    headline1: TextStyle(
        fontSize: 26, color: Colors.black, fontWeight: FontWeight.w900),
    headline2: TextStyle(
        fontSize: 24, color: Colors.black, fontWeight: FontWeight.w900),
    headline3: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900),
    headline4: TextStyle(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
    headline5: TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
    headline6: TextStyle(fontSize: 14, color: Colors.black),
    subtitle1: TextStyle(fontSize: 16, color: Colors.black),
    subtitle2: TextStyle(fontSize: 16, color: Colors.black),
    bodyText1: TextStyle(fontSize: 16, color: Colors.black),
    bodyText2: TextStyle(fontSize: 14, color: Colors.black),
    button: TextStyle(fontSize: 20, color: Colors.black),
  );
}
