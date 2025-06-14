import 'package:flutter/material.dart';

import '../../utils/constant/sizes.dart';
import '../widget/section_heading.dart';

class MCoursePage extends StatelessWidget {
  const MCoursePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MSizes.paddingAll),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MSectionHeading(title: title),
          SizedBox(height: MSizes.spaceBtwItems),
          Text(
            'Pertambahan adalah menjumlahkan dua atau lebih angka menjadi satu hasil. Kita bisa menggunakan tanda tambah (+) untuk menghitung pertambahan.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
