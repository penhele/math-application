import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';
import '../../utils/helper/helper_function.dart';
import '../../utils/helper/operation_type.dart';
import '../quiz/quiz.dart';
import 'quiz_card.dart';

class QuizContainer extends StatelessWidget {
  const QuizContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunction.isDarkMode(context);

    final totalQuestionsTambah = 10;
    final totalQuestionsKurang = 10;
    final totalQuestionsKali = 10;
    final totalQuestionsBagi = 10;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              title: 'Penjumlahan',
              height: 220,
              totalQuestions: totalQuestionsTambah,
              color: isDark ? Color(0xFF3949AB) : MColors.blue,
              top: true,
              onTap: () => Get.to(
                () => QuizScreen(
                  operation: OperationType.addition,
                  totalQuestions: totalQuestionsTambah,
                ),
              ),
            ),
            const SizedBox(height: MSizes.spaceBtwMenu),
            QuizCard(
              title: 'Pengurangan',
              height: 180,
              totalQuestions: totalQuestionsKurang,
              color: isDark ? Color(0xFFD32F2F) : MColors.red,
              top: false,
              onTap: () => Get.to(
                () => QuizScreen(
                  operation: OperationType.subtraction,
                  totalQuestions: totalQuestionsKurang,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: MSizes.spaceBtwMenu),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              title: 'Perkalian',
              height: 180,
              totalQuestions: totalQuestionsKali,
              color: isDark ? Color(0xFF388E3C) : MColors.green,
              top: true,
              onTap: () => Get.to(
                () => QuizScreen(
                  operation: OperationType.multiplication,
                  totalQuestions: totalQuestionsKali,
                ),
              ),
            ),
            const SizedBox(height: MSizes.spaceBtwMenu),
            QuizCard(
              title: 'Pembagian',
              height: 220,
              totalQuestions: totalQuestionsBagi,
              color: isDark ? Color(0xFFFBC02D) : MColors.yellow,
              top: false,
              onTap: () => Get.to(
                () => QuizScreen(
                  operation: OperationType.division,
                  totalQuestions: totalQuestionsBagi,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
