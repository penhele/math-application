import 'dart:math';

import '../../data/question.dart';
import 'operation_type.dart';

class QuestionGenerator {
  static List<QuizQuestion> generate(OperationType operation, int total)
 {
    final random = Random();

    return List.generate(total, (index) {
      int a = random.nextInt(10) + 1;
      int b = random.nextInt(10) + 1;
      int result;
      String questionText;

      switch (operation) {
        case OperationType.addition:
          result = a + b;
          questionText = '$a + $b = ...';
          break;
        case OperationType.subtraction:
          if (a < b) {
            final temp = a;
            a = b;
            b = temp;
          }
          result = a - b;
          questionText = '$a - $b = ...';
          break;
        case OperationType.multiplication:
          result = a * b;
          questionText = '$a × $b = ...';
          break;
        case OperationType.division:
          result = a;
          int dividend = a * b;
          questionText = '$dividend ÷ $b = ...';
          break;
      }

      final options = _generateOptions(correctAnswer: result);
      return QuizQuestion(
        question: questionText,
        correctAnswer: result.toString(),
        options: options,
      );
    });
  }

  static List<String> _generateOptions({required int correctAnswer}) {
    final random = Random();
    final Set<String> options = {correctAnswer.toString()};

    while (options.length < 6) {
      int fake = correctAnswer + random.nextInt(11) - 5;
      if (fake >= 0) options.add(fake.toString());
    }

    final list = options.toList();
    list.shuffle();
    return list;
  }
}