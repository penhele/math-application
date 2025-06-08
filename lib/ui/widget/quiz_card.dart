import 'package:flutter/material.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    super.key,
    required this.height,
    required this.totalQuestions,
    required this.backgroundColor,
    required this.top,
  });

  final double height;
  final int totalQuestions;
  final Color backgroundColor;
  final bool top;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 175,
      decoration: BoxDecoration(
        color: backgroundColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(MSizes.borderRadiusLg),
      ),
      child: Stack(
        children: [
          Positioned(
            top: top ? 0 : null,
            bottom: top ? null : 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(MSizes.sm),
              child: Container(
                height: 25,
                width: 60,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(MSizes.borderRadiusMd),
                ),
                child: Center(
                  child: Text(
                    '$totalQuestions Soal',
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall!.copyWith(color: MColors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
