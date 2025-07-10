import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/sizes.dart';
import '../../quiz/answer_card.dart';
import '../../widget/section_heading.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MSizes.paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MSectionHeading(title: 'Latihan Pertambahan'),
            SizedBox(height: MSizes.spaceBtwItems),

            Text(
              'Rudi memiliki 1 apel. Lalu temannya memberikan 3 apel lagi. Berapa jumlah apel Rudi sekarang?',
            ),
            SizedBox(height: MSizes.spaceBtwItems),

            Row(
              children: [
                Image.asset('assets/images/apple.png', height: 50),
                SizedBox(width: MSizes.spaceBtwMenu),
                Icon(Iconsax.add, size: 30),
                SizedBox(width: MSizes.spaceBtwMenu),
                Image.asset('assets/images/apple.png', height: 50),
                Image.asset('assets/images/apple.png', height: 50),
                Image.asset('assets/images/apple.png', height: 50),
              ],
            ),
            SizedBox(height: MSizes.spaceBtwItems * 2),

            Text('Pilih jawabanmu:'),
            SizedBox(height: MSizes.spaceBtwItems),

            Wrap(
              spacing: MSizes.spaceBtwMenu,
              runSpacing: MSizes.spaceBtwMenu,
              children: [
                AnswerCard(answer: '1'),
                AnswerCard(answer: '1'),
                AnswerCard(answer: '1'),
                AnswerCard(answer: '1'),
                AnswerCard(answer: '1'),
                AnswerCard(answer: '1'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
