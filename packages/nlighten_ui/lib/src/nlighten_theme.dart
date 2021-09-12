import 'package:flutter/material.dart';
import 'package:nlighten_ui/src/ui_colors.dart';

class LightTheme {
  static final Color primary = UIColors.orange;
}

class NLightenTheme {
  static MaterialColor swatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: LightTheme.primary.withOpacity(0.6),
      100: Color(_primaryValue).withOpacity(0.1),
      200: Color(_primaryValue).withOpacity(0.2),
      300: Color(_primaryValue).withOpacity(0.7),
      400: Color(_primaryValue).withOpacity(0.5),
      500: Color(_primaryValue),
      600: Color(_primaryValue).withOpacity(0.7),
      700: Color(_primaryValue).withOpacity(0.7),
      800: Color(_primaryValue).withOpacity(0.7),
      900: Color(_primaryValue).withOpacity(0.7),
    },
  );
  static int _primaryValue = LightTheme.primary.value;

  static final ThemeData _baseTheme = ThemeData(
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primarySwatch: swatch,
  );

  static final ThemeData lightTheme = _baseTheme.copyWith(
      primaryColorLight: LightTheme.primary.withOpacity(0.6),
      textTheme: TextTheme(
        bodyText2: TextStyle(color: UIColors.sharkBlack),
        bodyText1: TextStyle(color: UIColors.sharkBlack),
        subtitle1: TextStyle(color: UIColors.sharkBlack),
        subtitle2: TextStyle(color: UIColors.sharkBlack),
      ),
      // primaryColor: LightTheme.primary,
      accentColor: UIColors.gold,
      disabledColor: UIColors.hitGray,
      highlightColor: UIColors.orange,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: LightTheme.primary,
        unselectedItemColor: UIColors.sharkBlack,
      ),
      scaffoldBackgroundColor: UIColors.white,
      dividerColor: UIColors.hitGray,
      popupMenuTheme: PopupMenuThemeData(
          textStyle: TextStyle(
        color: UIColors.sharkBlack,
      )));

  static final ThemeData darkTheme = _baseTheme.copyWith(
    primaryColor: UIColors.matrix,
    accentColor: UIColors.orange,
  );
}
