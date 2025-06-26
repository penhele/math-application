import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/question.dart';

class QuizController extends GetxController {
  static QuizController get instance => Get.find();

  final pageController = PageController();
  var currentPage = 0.obs;

  final questions = sampleQuestions;

  final selectedAnswers = <int, String>{}.obs;

  void selectAnswer(int questionIndex, String answer) {
    selectedAnswers[questionIndex] = answer;
  }

  @override
  void onInit() {
    super.onInit();

    pageController.addListener(() {
      if (pageController.hasClients && pageController.position.hasPixels) {
        currentPage.value = pageController.page?.round() ?? 0;
      }
    });
  }

  void nextPage() {
    if (currentPage.value < questions.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }
}
