import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/sizes.dart';
import '../course/course.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.title,
    this.iconData,
    required this.backgroundColor,
  });

  final String title;
  final IconData? iconData;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const CourseScreen()),
      borderRadius: BorderRadius.circular(MSizes.borderRadiusLg),
      splashColor: backgroundColor.withValues(alpha: 0.2),
      child: Container(
        height: 50,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MSizes.borderRadiusLg),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(iconData, size: 22),
              const SizedBox(width: 12),
              Text(title, style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),
      ),
    );
  }
}
