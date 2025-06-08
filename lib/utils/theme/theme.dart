import 'package:flutter/material.dart';

import '../constant/colors.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    textTheme: MTextTheme.lightTextTheme,
    scaffoldBackgroundColor: MColors.white,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    textTheme: MTextTheme.darkTextTheme,
    scaffoldBackgroundColor: MColors.black,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
  );
}
