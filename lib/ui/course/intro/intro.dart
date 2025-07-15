import 'package:flutter/material.dart';

import '../../../utils/constant/sizes.dart';
import '../../../utils/helper/operation_type.dart';
import '../../widget/section_heading.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key, required this.operation});

  final OperationType operation;

  @override
  Widget build(BuildContext context) {
    String getTitle(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return 'Apa itu Penjumlahan?';
        case OperationType.subtraction:
          return 'Apa itu Pengurangan?';
        case OperationType.multiplication:
          return 'Apa itu Perkalian?';
        case OperationType.division:
          return 'Apa itu Pembagian?';
      }
    }

    String getContent(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return 'Penjumlahan adalah proses matematika untuk menjumlahkan dua atau lebih angka menjadi satu nilai total.';
        case OperationType.subtraction:
          return 'Pengurangan adalah proses mengurangi satu angka dari angka lainnya untuk mengetahui selisihnya.';
        case OperationType.multiplication:
          return 'Perkalian adalah proses menggabungkan sejumlah kelompok yang sama besar menjadi satu total.';
        case OperationType.division:
          return 'Pembagian adalah proses membagi suatu angka menjadi beberapa bagian yang sama besar.';
      }
    }

    return Padding(
      padding: const EdgeInsets.all(MSizes.paddingAll),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MSectionHeading(title: getTitle(operation)),
          const SizedBox(height: MSizes.spaceBtwItems),
          Text(
            getContent(operation),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
