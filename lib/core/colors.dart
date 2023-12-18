import 'package:flutter/material.dart';

const textColor = Color(0xff000354);
const buttonColor = Color(0xff6DEFEF);
const red = Color.fromRGBO(177, 0, 0, 0.75);

const gradientcolor = [Color(0xffB10000), Color(0xff000354)];

const bggradientColors = [
  Color(0xff66C8FF),
  Color(0xff74FCD3),
  Color(0xffC7F5D8),
  Color(0xff66C8FF)
];

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFEDFDFD),
  100: Color(0xFFD3FAFA),
  200: Color(0xFFB6F7F7),
  300: Color(0xFF99F4F4),
  400: Color(0xFF83F1F1),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF65EDED),
  700: Color(0xFF5AEBEB),
  800: Color(0xFF50E8E8),
  900: Color(0xFF3EE4E4),
});
const int _primaryPrimaryValue = 0xFF6DEFEF;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFCCFFFF),
  700: Color(0xFFB3FFFF),
});
const int _primaryAccentValue = 0xFFFFFFFF;
