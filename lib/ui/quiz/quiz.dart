import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'exit_dialog.dart';
import 'quiz_controller.dart';
import 'quiz_page.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(QuizController());

    return WillPopScope(
      onWillPop: () => showExitQuizDialog(context),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              final exit = await showExitQuizDialog(context);
              if (exit) Get.back();
            },
          ),
        ),
        body: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                QuizPage(title: 'Soal 1'),
                QuizPage(title: 'Soal 2'),
                QuizPage(title: 'Soal 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
