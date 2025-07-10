import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/sizes.dart';
import '../../widget/section_heading.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MSizes.paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MSectionHeading(title: 'Contoh Pertambahan'),
            SizedBox(height: MSizes.spaceBtwItems),

            Text(
              'Jika kamu punya 2 apel, lalu diberi 3 apel lagi, berapa jumlah apelmu sekarang?',
            ),
            SizedBox(height: MSizes.spaceBtwItems),

            Row(
              children: [
                Image.asset('assets/images/apple.png', height: 50),
                Image.asset('assets/images/apple.png', height: 50),

                SizedBox(width: MSizes.spaceBtwMenu),
                Icon(Iconsax.add, size: 30),
                SizedBox(width: MSizes.spaceBtwMenu),

                Image.asset('assets/images/apple.png', height: 50),
                Image.asset('assets/images/apple.png', height: 50),
                Image.asset('assets/images/apple.png', height: 50),
              ],
            ),
            SizedBox(height: MSizes.spaceBtwItems),

            Text('Lalu kita jumlahkan semuanya'),
            SizedBox(height: MSizes.spaceBtwItems),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Jadi, 2 + 3 = 5',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
