import 'package:flutter/material.dart';

import '../color/color.dart';
import 'custom_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    textTheme: MTextTheme.lightTextTheme,
    scaffoldBackgroundColor: MColor.white,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    textTheme: MTextTheme.darkTextTheme,
    scaffoldBackgroundColor: MColor.black,
  );
}
