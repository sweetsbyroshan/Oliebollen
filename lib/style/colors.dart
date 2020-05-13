import 'package:flutter/material.dart';

class CDSColors {
  static const MaterialColor neutralGrey = MaterialColor(
    _neutralGreyPrimaryValue,
    <int, Color>{
      50: Color(0xFFF4F4F4),
      100: Color(0xFFE0E0E0),
      200: Color(0xFFC6C6C6),
      300: Color(0xFFA8A8A8),
      400: Color(0xFF8D8D8D),
      500: Color(_neutralGreyPrimaryValue),
      600: Color(0xFF525252),
      700: Color(0xFF393939),
      800: Color(0xFF262626),
      900: Color(0xFF161616),
    },
  );

  static const int _neutralGreyPrimaryValue = 0xFF6F6F6F;

  static const MaterialColor coreBlue = MaterialColor(
    _coreBluePrimaryValue,
    <int, Color>{
      50: Color(0xFFEDF5FF),
      100: Color(0xFFD0E2FF),
      200: Color(0xFFA6C8FF),
      300: Color(0xFF78A9FF),
      400: Color(0xFF4589FF),
      500: Color(_coreBluePrimaryValue),
      600: Color(0xFF0043CE),
      700: Color(0xFF002D9C),
      800: Color(0xFF001D6C),
      900: Color(0xFF001141),
    },
  );
  static const int _coreBluePrimaryValue = 0xFF0F62FE;
  static const int alertRedValue = 0xFFDA1E28;
  static const int alertOrangeValue = 0xFFFF832B;
  static const int alertYellowValue = 0xFFFDD13A;
  static const int alertGreenValue = 0xFF24A148;
}
