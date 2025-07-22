import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../constant/colors.dart';

class TLoaders {
  static correctSnackBar({required title, message = '', duration = 1}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: MColors.white,
      backgroundColor: MColors.correct,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: MColors.white),
    );
  }

  static wrongSnackBar({required title, message = '', duration = 1}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: MColors.white,
      backgroundColor: MColors.wrong,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.close_circle, color: MColors.white),
    );
  }

  static warningSnackBar({required title, message = '', duration = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: MColors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: MColors.white),
    );
  }
}
