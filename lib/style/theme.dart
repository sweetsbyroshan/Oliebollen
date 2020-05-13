import 'package:flutter/material.dart';
import 'package:oliebollen/style/colors.dart';

class CarbonDesignSystem {
  static ThemeData WHITE = new ThemeData(
    colorScheme: ColorScheme(
        background: Colors.white,
        error: Color(CDSColors.alertRedValue),
        brightness: Brightness.light,
        onBackground: CDSColors.neutralGrey.shade100,
        onPrimary: CDSColors.neutralGrey.shade100,
        onError: Colors.white,
        onSecondary: CDSColors.coreBlue.shade600,
        onSurface: Colors.white,
        primary: CDSColors.coreBlue.shade600,
        primaryVariant: CDSColors.coreBlue.shade700,
        secondary: CDSColors.neutralGrey.shade800,
        secondaryVariant: CDSColors.neutralGrey.shade900,
        surface: CDSColors.neutralGrey.shade100),
  );
}
