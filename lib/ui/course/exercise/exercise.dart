import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../data/question.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/helper/operation_type.dart';
import '../../../utils/helper/question_generator.dart';
import '../../quiz/answer_card.dart';
import '../../widget/section_heading.dart';
import 'exercise_controller.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key, required this.operation});

  final OperationType operation;

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  late List<QuizQuestion> questions;
  int currentIndex = 0;
  String? selectedAnswer;

  @override
  void initState() {
    super.initState();

    if (widget.operation == OperationType.division) {
      questions = [
        QuizQuestion(
          question: '4 ÷ 2 = ...',
          correctAnswer: '2',
          options: ['2', '1', '3', '4', '5', '0']..shuffle(),
        ),
      ];
    } else {
      questions = QuestionGenerator.generate(
        widget.operation,
        1,
        totalNumber: 3,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];

    int left = int.parse(question.question[0]);
    int right = int.parse(question.question[4]);

    if (widget.operation == OperationType.division) {
      left = 4;
      right = 2;
    }

    String getTitle(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return 'Latihan Penjumlahan';
        case OperationType.subtraction:
          return 'Latihan Pengurangan';
        case OperationType.multiplication:
          return 'Latihan Perkalian';
        case OperationType.division:
          return 'Latihan Pembagian';
      }
    }

    String getQuestionText(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return 'Rudi memiliki $left apel. Lalu temannya memberikan $right apel lagi. Berapa jumlah apel Rudi sekarang?';
        case OperationType.subtraction:
          return 'Rudi memiliki $left apel. Lalu ia memakan $right apel. Berapa sisa apel Rudi sekarang?';
        case OperationType.multiplication:
          return 'Rudi memiliki $left kantong, dan setiap kantong berisi $right apel. Berapa total apel yang Rudi miliki?';
        case OperationType.division:
          return 'Rudi memiliki $left apel dan ingin membagikannya kepada $right teman. Berapa apel yang diterima masing-masing teman?';
      }
    }

    Icon getOperatorIcon(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return Icon(Iconsax.add, size: 30);
        case OperationType.subtraction:
          return Icon(Iconsax.minus, size: 30);
        case OperationType.multiplication:
          return Icon(Icons.close, size: 30);
        case OperationType.division:
          return Icon(Icons.percent, size: 30);
      }
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MSizes.paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MSectionHeading(title: getTitle(widget.operation)),
            SizedBox(height: MSizes.spaceBtwItems),

            Text(getQuestionText(widget.operation)),
            SizedBox(height: MSizes.spaceBtwItems),

            Row(
              children: [
                for (int i = 0; i < left; i++)
                  Image.asset('assets/images/apple.png', height: 50),

                SizedBox(width: MSizes.spaceBtwMenu),
                getOperatorIcon(widget.operation),
                SizedBox(width: MSizes.spaceBtwMenu),

                for (int i = 0; i < right; i++)
                  Image.asset('assets/images/apple.png', height: 50),
              ],
            ),

            SizedBox(height: MSizes.spaceBtwItems * 2),

            Text('Pilih jawabanmu:'),
            SizedBox(height: MSizes.spaceBtwItems),

            LayoutBuilder(
              builder: (context, constraints) {
                const itemPerRow = 3;
                final totalSpacing = (itemPerRow - 1) * MSizes.spaceBtwMenu;
                final itemWidth =
                    (constraints.maxWidth - totalSpacing) / itemPerRow;

                return Wrap(
                  spacing: MSizes.spaceBtwMenu,
                  runSpacing: MSizes.spaceBtwMenu,
                  children: question.options.map((option) {
                    final isSelected = selectedAnswer == option;
                    return SizedBox(
                      width: itemWidth,
                      child: AnswerCard(
                        answer: option,
                        isSelected: isSelected,
                        onTap: () {
                          setState(() {
                            selectedAnswer = option;
                          });

                          final correctAnswer =
                              questions[currentIndex].correctAnswer;

                          Get.find<ExerciseController>().setAnswer(option);
                          Get.find<ExerciseController>().setCorrectAnswer(
                            correctAnswer,
                          );
                        },
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
