import 'package:flutter/material.dart';

ThemeData createLightTheme() {
  final colorScheme = _colorSchemeLight();
  return _createTheme(colorScheme);
}

ThemeData createDarkTheme() {
  final colorScheme = _colorSchemeDark();
  return _createTheme(colorScheme);
}

ColorScheme _colorSchemeLight() {
  return ColorScheme.fromSeed(seedColor: Colors.teal);
}

ColorScheme _colorSchemeDark() {
  return ColorScheme.fromSeed(seedColor: Colors.indigo, brightness: Brightness.dark);
}

ThemeData _createTheme(ColorScheme colorScheme) {
  final theme = ThemeData.from(
    colorScheme: colorScheme,
  );

  return theme.copyWith(
    cardTheme: _cardTheme(colorScheme),
  );
}

CardTheme _cardTheme(ColorScheme colorScheme) {
  return const CardTheme(
    margin: EdgeInsets.zero,
  );
}
