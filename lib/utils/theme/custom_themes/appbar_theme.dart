import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class MAppBarTheme {
  MAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    backgroundColor: MColors.primary,
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MColors.white,
    ),
    iconTheme: IconThemeData(color: MColors.white, size: 24),
  );

  static const darkAppBarTheme = AppBarTheme(
    backgroundColor: MColors.darkerGrey,
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: MColors.white,
    ),
    iconTheme: IconThemeData(color: MColors.white, size: 24),
  );
}
