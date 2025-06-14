import 'package:flutter/material.dart';

import '../../utils/constant/sizes.dart';
import '../widget/section_heading.dart';
import 'answer_card.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MSizes.paddingAll),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MSectionHeading(title: title),
              SizedBox(height: MSizes.spaceBtwItems),
            ],
          ),

          Positioned(
            bottom: 100,
            right: 0,
            left: 0,
            child: Center(
              child: Wrap(
                spacing: MSizes.spaceBtwMenu,
                runSpacing: MSizes.spaceBtwMenu,
                children: [
                  AnswerCard(answer: '1'),
                  AnswerCard(answer: '2'),
                  AnswerCard(answer: '3'),
                  AnswerCard(answer: '4'),
                  AnswerCard(answer: '5'),
                  AnswerCard(answer: '6'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
