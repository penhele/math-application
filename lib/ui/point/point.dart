import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../navigation_menu.dart';
import '../../utils/constant/sizes.dart';

class PointScreen extends StatelessWidget {
  const PointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(MSizes.paddingAll),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/success-animation.json',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              SizedBox(height: MSizes.spaceBtwMenu),
              Text(
                'Selamat!',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontSize: 25),
              ),
              SizedBox(height: MSizes.spaceBtwMenu),
              Text(
                'Anda telah menyelesaikan kuis penjumlahan dengan nilai yang bagus.\nTetap pertahankan kualitas Anda!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: MSizes.spaceBtwSections),
              SizedBox(
                width: 200,
                height: 30,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => NavigationMenu()),
                  child: Text(
                    'Tutup',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
