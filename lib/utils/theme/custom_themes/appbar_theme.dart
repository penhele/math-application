import 'package:flutter/material.dart';
import 'package:math_application/utils/constant/colors.dart';

class MAppBarTheme {
  MAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    backgroundColor: MColors.primary,
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MColors.white,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    backgroundColor: MColors.darkerGrey,
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MColors.white
    )
  );
}
