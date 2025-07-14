import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../navigation_menu.dart';
import '../../utils/constant/sizes.dart';

class PointScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const PointScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = ((score / totalQuestions) * 100).round();

    String animationPath;
    String title;
    String message;

    if (percentage >= 90) {
      animationPath = 'assets/animations/success-animation.json';
      title = 'Selamat!';
      message = 'Anda luar biasa! Terus pertahankan prestasi Anda.';
    } else if (percentage >= 70) {
      animationPath = 'assets/animations/good-animation.json';
      title = 'Kerja bagus!';
      message = 'Hasil yang baik, tingkatkan lagi untuk mendapatkan nilai sempurna!';
    } else {
      animationPath = 'assets/animations/fail-animation.json';
      title = 'Tetap semangat!';
      message = 'Jangan menyerah, terus belajar dan coba lagi.';
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(MSizes.paddingAll),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                animationPath,
                width: 350,
                height: 350,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: MSizes.spaceBtwMenu),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 25),
              ),
              const SizedBox(height: MSizes.spaceBtwMenu),
              Text(
                'Nilai Anda: $percentage%\nBenar $score dari $totalQuestions\n\n$message',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),
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
