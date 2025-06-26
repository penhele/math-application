class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

final List<QuizQuestion> sampleQuestions = [
  QuizQuestion(
    question: '2 + 3 = ?',
    options: ['4', '5', '6', '7', '8', '9'],
    correctAnswer: '5',
  ),
  QuizQuestion(
    question: '7 + 5 = ?',
    options: ['10', '11', '12', '13', '14', '15'],
    correctAnswer: '12',
  ),
  QuizQuestion(
    question: '10 + 4 = ?',
    options: ['12', '13', '14', '15', '16', '17'],
    correctAnswer: '14',
  ),
  QuizQuestion(
    question: '6 + 9 = ?',
    options: ['13', '14', '15', '16', '17', '18'],
    correctAnswer: '15',
  ),
  QuizQuestion(
    question: '8 + 7 = ?',
    options: ['13', '14', '15', '16', '17', '18'],
    correctAnswer: '15',
  ),
  QuizQuestion(
    question: '12 + 3 = ?',
    options: ['13', '14', '15', '16', '17', '18'],
    correctAnswer: '15',
  ),
  QuizQuestion(
    question: '4 + 6 = ?',
    options: ['8', '9', '10', '11', '12', '13'],
    correctAnswer: '10',
  ),
  QuizQuestion(
    question: '9 + 8 = ?',
    options: ['15', '16', '17', '18', '19', '20'],
    correctAnswer: '17',
  ),
  QuizQuestion(
    question: '5 + 11 = ?',
    options: ['14', '15', '16', '17', '18', '19'],
    correctAnswer: '16',
  ),
  QuizQuestion(
    question: '13 + 6 = ?',
    options: ['17', '18', '19', '20', '21', '22'],
    correctAnswer: '19',
  ),
];
