import 'package:flutter/material.dart';

import 'quiz_page.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          PageView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              QuizPage(title: 'Soal 1'),
              QuizPage(title: 'Soal 2'),
              QuizPage(title: 'Soal 3'),
            ],
          ),
        ],
      ),
    );
  }
}
