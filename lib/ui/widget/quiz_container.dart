import 'package:flutter/material.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';
import 'quiz_card.dart';

class QuizContainer extends StatelessWidget {
  const QuizContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              title: 'Penjumlahan',
              height: 220,
              totalQuestions: 10,
              color: MColors.blue,
              top: true,
            ),
            SizedBox(height: MSizes.spaceBtwItems),
            QuizCard(
              title: 'Pengurangan',
              height: 180,
              totalQuestions: 10,
              color: MColors.red,
              top: false,
            ),
          ],
        ),
        SizedBox(width: MSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              title: 'Perkalian',
              height: 180,
              totalQuestions: 10,
              color: MColors.green,
              top: true,
            ),
            SizedBox(height: MSizes.spaceBtwItems),
            QuizCard(
              title: 'Pembagian',
              height: 220,
              totalQuestions: 10,
              color: MColors.yellow,
              top: false,
            ),
          ],
        ),
      ],
    );
  }
}

