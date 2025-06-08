import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';
import 'course_card.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Wrap(
            spacing: MSizes.spaceBtwMenu,
            runSpacing: MSizes.spaceBtwMenu,
            children: [
              CourseCard(
                iconData: Iconsax.add,
                title: 'Penjumlahan',
                backgroundColor: MColors.blue.withValues(alpha: 0.1),
                onPressed: () {},
              ),
              CourseCard(
                iconData: Iconsax.minus,
                title: 'Pengurangan',
                backgroundColor: MColors.red.withValues(alpha: 0.1),
                onPressed: () {},
              ),
              CourseCard(
                iconData: Icons.close,
                title: 'Perkalian',
                backgroundColor: MColors.green.withValues(alpha: 0.1),
                onPressed: () {},
              ),
              CourseCard(
                iconData: Icons.percent,
                title: 'Pembagian',
                backgroundColor: MColors.yellow.withValues(alpha: 0.1),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
