import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/sizes.dart';
import '../../../utils/helper/operation_type.dart';
import '../../widget/section_heading.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key, required this.operation});

  final OperationType operation;

  @override
  Widget build(BuildContext context) {
    const int a = 4;
    const int b = 2;

    String getTitle(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return 'Contoh Penjumlahan';
        case OperationType.subtraction:
          return 'Contoh Pengurangan';
        case OperationType.multiplication:
          return 'Contoh Perkalian';
        case OperationType.division:
          return 'Contoh Pembagian';
      }
    }

    String getQuestion(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return 'Jika kamu punya $a apel, lalu diberi $b apel lagi, berapa jumlah apelmu sekarang?';
        case OperationType.subtraction:
          return 'Jika kamu punya $a apel, lalu dimakan $b apel, berapa sisa apelmu sekarang?';
        case OperationType.multiplication:
          return 'Jika kamu punya $a keranjang, dan tiap keranjang berisi $b apel, berapa total apelmu?';
        case OperationType.division:
          return 'Jika kamu punya $a apel dan ingin dibagi rata ke $b orang, berapa apel yang diterima tiap orang?';
      }
    }

    Icon getOperationIcon(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return Icon(Iconsax.add, size: 30);
        case OperationType.subtraction:
          return Icon(Iconsax.minus, size: 30);
        case OperationType.multiplication:
          return Icon(Icons.close, size: 30);
        case OperationType.division:
          return Icon(Icons.percent, size: 30);
      }
    }

    String getResult(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return '$a + $b = ${a + b}';
        case OperationType.subtraction:
          return '$a - $b = ${a - b}';
        case OperationType.multiplication:
          return '$a × $b = ${a * b}';
        case OperationType.division:
          return '$a ÷ $b = ${a / b}';
      }
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MSizes.paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MSectionHeading(title: getTitle(operation)),
            SizedBox(height: MSizes.spaceBtwItems),

            Text(getQuestion(operation)),
            SizedBox(height: MSizes.spaceBtwItems),

            Row(
              children: [
                for (int i = 0; i < a; i++)
                  Image.asset('assets/images/apple.png', height: 50),
                SizedBox(width: MSizes.spaceBtwMenu),
                getOperationIcon(operation),
                SizedBox(width: MSizes.spaceBtwMenu),
                for (int i = 0; i < b; i++)
                  Image.asset('assets/images/apple.png', height: 50),
              ],
            ),
            SizedBox(height: MSizes.spaceBtwItems),

            Text('Lalu kita hitung hasilnya'),
            SizedBox(height: MSizes.spaceBtwItems),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Jadi, ${getResult(operation)}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
