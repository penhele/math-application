import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/question.dart';
import '../../utils/constant/sizes.dart';
import '../point/point.dart';
import '../widget/section_heading.dart';
import 'answer_card.dart';
import 'quiz_controller.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key, required this.question, required this.index});

  final QuizQuestion question;
  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<QuizController>();

    return Padding(
      padding: const EdgeInsets.all(MSizes.paddingAll),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MSectionHeading(title: 'Soal ${index + 1}'),
              const SizedBox(height: MSizes.spaceBtwSections),
              Center(
                child: Text(
                  question.question,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontSize: 30),
                ),
              ),
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

                    return Obx(() {
                      final selectedAnswer = controller.selectedAnswers[index];

                      return Wrap(
                        spacing: MSizes.spaceBtwMenu,
                        runSpacing: MSizes.spaceBtwMenu,
                        children: question.options.map((answer) {
                          final isSelected = answer == selectedAnswer;

                          return SizedBox(
                            width: itemWidth,
                            child: AnswerCard(
                              answer: answer,
                              isSelected: isSelected,
                              onTap: () =>
                                  controller.selectAnswer(index, answer),
                            ),
                          );
                        }).toList(),
                      );
                    });
                  },
                ),
                const SizedBox(height: MSizes.spaceBtwItems),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            controller.previousPage();
                          },
                          child: Text('Sebelumnya'),
                        ),
                      ),
                    ),
                    const SizedBox(width: MSizes.spaceBtwItems),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if (controller.currentPage.value ==
                                controller.questions.length - 1) {
                              Get.to(() => const PointScreen());
                            } else {
                              controller.nextPage();
                            }
                          },
                          child: Obx(
                            () => Text(
                              controller.currentPage.value ==
                                      controller.questions.length - 1
                                  ? 'Selesai'
                                  : 'Lanjut',
                            ),
                          ),
                        ),
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
