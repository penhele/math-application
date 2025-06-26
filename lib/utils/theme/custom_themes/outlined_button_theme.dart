import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class MOutlinedButtonTheme {
  MOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: MColors.primary,
      side: const BorderSide(color: MColors.primary),
      padding: const EdgeInsets.all(0),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: MColors.primary,
      side: const BorderSide(color: MColors.primary),
      padding: const EdgeInsets.all(0),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
