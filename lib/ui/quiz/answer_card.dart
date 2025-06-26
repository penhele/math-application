import 'package:flutter/material.dart';
import 'package:math_application/utils/constant/colors.dart';

import '../../utils/constant/sizes.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.answer,
    this.onTap,
    this.isSelected = false,
  });

  final String answer;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(MSizes.borderRadiusMd),
      child: Container(
        height: 80,
        width: 110,
        decoration: BoxDecoration(
          color: MColors.yellow.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(MSizes.borderRadiusMd),
          border: Border.all(
            color: isSelected ? MColors.yellow : Colors.transparent,
            width: 3,
          ),
        ),
        child: Center(
          child: Text(answer, style: Theme.of(context).textTheme.titleLarge),
        ),
      ),
    );
  }
}
