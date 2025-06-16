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
              const SizedBox(height: MSizes.spaceBtwItems),
            ],
          ),
          Positioned(
            bottom: 100,
            right: 0,
            left: 0,
            child: Column(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    const itemPerRow = 3;
                    final totalSpacing = (itemPerRow - 1) * MSizes.spaceBtwMenu;
                    final itemWidth =
                        (constraints.maxWidth - totalSpacing) / itemPerRow;

                    return Wrap(
                      spacing: MSizes.spaceBtwMenu,
                      runSpacing: MSizes.spaceBtwMenu,
                      children: [
                        for (var answer in ['1', '2', '3', '4', '5', '6'])
                          SizedBox(
                            width: itemWidth,
                            child: AnswerCard(answer: answer),
                          ),
                      ],
                    );
                  },
                ),

                SizedBox(height: MSizes.spaceBtwItems),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Sebelumnya'),
                      ),
                    ),
                    SizedBox(width: MSizes.spaceBtwItems),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Kirim'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
