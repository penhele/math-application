import 'package:flutter/material.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    super.key,
    required this.height,
    required this.totalQuestions,
    required this.color,
    required this.top,
    required this.title,
    required this.onTap,
  });

  final double height;
  final int totalQuestions;
  final Color color;
  final bool top;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(MSizes.borderRadiusLg),
      splashColor: color.withValues(alpha: 0.2),
      child: Container(
        height: height,
        width: 175,
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(MSizes.borderRadiusLg),
        ),
        child: Padding(
          padding: const EdgeInsets.all(MSizes.md),
          child: Stack(
            children: [
              Positioned(
                top: top ? 0 : null,
                bottom: top ? null : 0,
                right: 0,
                child: Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    color: color,
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

              Positioned(
                top: top ? null : 0,
                bottom: top ? 0 : null,
                left: 0,
                child: Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(color: color),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
