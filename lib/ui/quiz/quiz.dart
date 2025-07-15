import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/question.dart';
import '../../navigation_menu.dart';
import '../../utils/constant/sizes.dart';
import '../../utils/helper/loaders.dart';
import '../../utils/helper/operation_type.dart';
import '../../utils/helper/question_generator.dart';
import '../course/page_button.dart';
import '../point/point.dart';
import '../widget/section_heading.dart';
import 'answer_card.dart';
import 'exit_dialog.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
    required this.operation,
    required this.totalQuestions,
  });

  final OperationType operation;
  final int totalQuestions;

  @override
  State<QuizScreen> createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> with WidgetsBindingObserver {
  late List<QuizQuestion> questions;
  int currentIndex = 0;
  String? selectedAnswer;
  Map<int, String> selectedAnswers = {};
  int score = 0;

  @override
  void initState() {
    super.initState();
    questions = QuestionGenerator.generate(
      widget.operation,
      widget.totalQuestions,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _handleAppExitByHome();
    }
  }

  Future<void> _handleAppExitByHome() async {
    final exit = await showExitQuizDialog(context);
    if (exit) {
      Get.offAll(() => NavigationMenu());
    }
  }

  Future<bool> _onWillPop() async {
    final exit = await showExitQuizDialog(context);
    if (exit) {
      Get.offAll(() => NavigationMenu());
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              final exit = await showExitQuizDialog(context);
              if (exit) Get.offAll(() => NavigationMenu());
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MSectionHeading(
                title: 'Soal ${currentIndex + 1}/${questions.length}',
              ),
              const SizedBox(height: 20),

              Center(
                child: Text(
                  question.question,
                  style: const TextStyle(fontSize: 28),
                ),
              ),
              const SizedBox(height: 30),

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
                          },
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              MPageButton(
                width: double.infinity,
                title: currentIndex == questions.length - 1
                    ? "Selesai"
                    : "Lanjut",
                onPressed: () {
                  final correctAnswer = questions[currentIndex].correctAnswer;

                  if (selectedAnswer == null) {
                    TLoaders.warningSnackBar(
                      title: 'Belum memilih jawaban',
                      message:
                          'Silakan pilih salah satu jawaban terlebih dahulu.',
                    );
                    return;
                  }

                  selectedAnswers[currentIndex] = selectedAnswer!;

                  if (selectedAnswer == correctAnswer) {
                    score++;
                    TLoaders.correctSnackBar(
                      title: 'Benar!',
                      message: 'Jawaban kamu tepat.',
                    );
                  } else {
                    TLoaders.wrongSnackBar(
                      title: 'Salah!',
                      message: 'Jawaban yang benar: $correctAnswer',
                    );
                  }

                  Future.delayed(const Duration(milliseconds: 600), () {
                    if (currentIndex < questions.length - 1) {
                      setState(() {
                        currentIndex++;
                        selectedAnswer = null;
                      });
                    } else {
                      Get.to(
                        () => PointScreen(
                          score: score,
                          totalQuestions: questions.length,
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
