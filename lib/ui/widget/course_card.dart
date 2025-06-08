import 'package:flutter/material.dart';

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
    return Container(
      height: 50,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
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
    );
  }
}
