import 'package:flutter/material.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';
import 'quiz_card.dart';

class QuizContainer extends StatelessWidget {
  const QuizContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              onPressed: () {},
              title: 'Penjumlahan',
              height: 220,
              totalQuestions: 10,
              color: MColors.blue,
              top: true,
            ),
            const SizedBox(height: MSizes.spaceBtwItems),
            QuizCard(
              onPressed: () {},
              title: 'Pengurangan',
              height: 180,
              totalQuestions: 10,
              color: MColors.red,
              top: false,
            ),
          ],
        ),
        const SizedBox(width: MSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizCard(
              onPressed: () {},
              title: 'Perkalian',
              height: 180,
              totalQuestions: 10,
              color: MColors.green,
              top: true,
            ),
            const SizedBox(height: MSizes.spaceBtwItems),
            QuizCard(
              onPressed: () {},
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
