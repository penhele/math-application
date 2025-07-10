import 'package:flutter/material.dart';
import 'package:math_application/utils/constant/sizes.dart';

import '../../widget/section_heading.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MSizes.paddingAll),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MSectionHeading(title: 'Apa itu Pertambahan?'),
          const SizedBox(height: MSizes.spaceBtwItems),
          Text(
            'Pertambahan adalah cara menghitung jumlah dua angka atau lebih. ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
