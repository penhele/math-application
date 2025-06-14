import 'package:flutter/material.dart';

import '../../utils/constant/sizes.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({super.key, required this.answer});

  final String answer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('clicked');
      },
      child: Container(
        height: 80,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(MSizes.borderRadiusMd),
        ),
        child: Center(child: Text(answer)),
      ),
    );
  }
}
