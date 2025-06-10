import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:math_application/ui/widget/section_heading.dart';
import 'package:math_application/utils/constant/image_string.dart';
import 'package:math_application/utils/constant/sizes.dart';

class PertambahanScreen extends StatelessWidget {
  const PertambahanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pertambahan')),
      body: Padding(
        padding: EdgeInsets.all(MSizes.paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MSectionHeading(title: 'Apa itu Pertambahan?'),
            SizedBox(height: MSizes.spaceBtwItems),
            Text(
              'Pertambahan adalah menjumlahkan dua atau lebih angka menjadi satu hasil. Kita bisa menggunakan tanda tambah (+) untuk menghitung pertambahan.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: MSizes.spaceBtwSections),

            MSectionHeading(title: 'Contoh Pertambahan'),
            SizedBox(height: MSizes.spaceBtwItems),
            Text(
              'Ali punya 2 apel. Ibunya memberinya 3 apel lagi. Berapa jumlah apel Ali sekarang?',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: MSizes.spaceBtwItems),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(MImages.apel, height: 35,),
                Image.asset(MImages.apel, height: 35,),

                Icon(Iconsax.add),

                Image.asset(MImages.apel, height: 35,),
                Image.asset(MImages.apel, height: 35,),
                Image.asset(MImages.apel, height: 35,),
              ],
            ),
            SizedBox(height: MSizes.spaceBtwItems),

            Text('2 + 3 = 5'),
            Text('Jadi, Ali punya 5 apel.'),
            SizedBox(height: MSizes.spaceBtwItems),

            Text(
              'Dina membaca 4 buku minggu lalu, dan 2 buku minggu ini. Berapa total buku yang sudah Dina baca?    ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: MSizes.spaceBtwItems),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(MImages.buku, height: 35,),
                Image.asset(MImages.buku, height: 35,),

                Icon(Iconsax.add),

                Image.asset(MImages.buku, height: 35,),
                Image.asset(MImages.buku, height: 35,),
                Image.asset(MImages.buku, height: 35,),
              ],
            ),
            SizedBox(height: MSizes.spaceBtwItems),





            SizedBox(height: MSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
