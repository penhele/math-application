import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';
import '../../utils/helper/helper_function.dart';
import '../quiz/quiz.dart';
import 'quiz_card.dart';

class QuizContainer extends StatelessWidget {
  const QuizContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunction.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              onPressed: () => Get.to(() => QuizScreen()),
              title: 'Penjumlahan',
              height: 220,
              totalQuestions: 10,
              color: isDark ? Color(0xFF3949AB) : MColors.blue,
              top: true,
            ),
            const SizedBox(height: MSizes.spaceBtwMenu),
            QuizCard(
              onPressed: () {},
              title: 'Pengurangan',
              height: 180,
              totalQuestions: 10,
              color: isDark ? Color(0xFFD32F2F) : MColors.red,
              top: false,
            ),
          ],
        ),
        const SizedBox(width: MSizes.spaceBtwMenu),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              onPressed: () {},
              title: 'Perkalian',
              height: 180,
              totalQuestions: 10,
              color: isDark ? Color(0xFF388E3C) : MColors.green,
              top: true,
            ),
            const SizedBox(height: MSizes.spaceBtwMenu),
            QuizCard(
              onPressed: () {},
              title: 'Pembagian',
              height: 220,
              totalQuestions: 10,
              color: isDark ? Color(0xFFFBC02D) : MColors.yellow,
              top: false,
            ),
          ],
        ),
      ],
    );
  }
}
