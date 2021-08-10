import 'package:flutter/material.dart';
import 'package:nlighten_ui/src/ui_colors.dart';

class LightTheme {
  static final Color primary = UIColors.orange;
}

class NLightenTheme {
  static final ThemeData _baseTheme = ThemeData(
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
  );

  static final ThemeData lightTheme = _baseTheme.copyWith(
    primaryColor: LightTheme.primary,
    accentColor: UIColors.gold,
    disabledColor: UIColors.hitGray,
    highlightColor: UIColors.orange,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: LightTheme.primary,
      unselectedItemColor: UIColors.sharkBlack,
    ),
    scaffoldBackgroundColor: UIColors.white,
    dividerColor: UIColors.hitGray,
  );

  static final ThemeData darkTheme = _baseTheme.copyWith(
    primaryColor: UIColors.matrix,
    accentColor: UIColors.orange,
  );
}
