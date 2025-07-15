import 'package:get/get.dart';

class ExerciseController extends GetxController {
  String? selectedAnswer;
  String correctAnswer = '';

  void setAnswer(String answer) {
    selectedAnswer = answer;
  }

  void setCorrectAnswer(String answer) {
    correctAnswer = answer;
  }

  bool get isAnswered => selectedAnswer != null;

  bool get isCorrect => selectedAnswer == correctAnswer;
}
