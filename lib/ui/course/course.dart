import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../navigation_menu.dart';
import '../../utils/constant/sizes.dart';
import '../../utils/helper/loaders.dart';
import '../../utils/helper/operation_type.dart';
import 'course_controller.dart';
import 'example/example.dart';
import 'exercise/exercise.dart';
import 'exercise/exercise_controller.dart';
import 'intro/intro.dart';
import 'page_button.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, required this.operation});

  final OperationType operation;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CourseController());
    final exerciseController = Get.put(ExerciseController());

    // Buat judul dinamis berdasarkan operation
    String getTitle(OperationType op) {
      switch (op) {
        case OperationType.addition:
          return 'Penjumlahan';
        case OperationType.subtraction:
          return 'Pengurangan';
        case OperationType.multiplication:
          return 'Perkalian';
        case OperationType.division:
          return 'Pembagian';
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text(getTitle(operation))),
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              IntroPage(operation: operation),
              ExamplePage(operation: operation),
              ExercisePage(operation: operation),
            ],
          ),

          Obx(
            () => controller.currentPage.value > 0
                ? MPageButton(
                    title: 'Sebelumnya',
                    left: MSizes.paddingAll,
                    onPressed: () => controller.previousPage(),
                    isOutlined: true,
                  )
                : SizedBox(),
          ),

          Obx(() {
            if (controller.currentPage.value < controller.totalPages - 1) {
              return MPageButton(
                title: 'Selanjutnya',
                right: MSizes.paddingAll,
                onPressed: () => controller.nextPage(),
              );
            } else {
              return MPageButton(
                title: 'Selesai',
                right: MSizes.paddingAll,
                onPressed: () {
                  if (!exerciseController.isAnswered) {
                    TLoaders.warningSnackBar(
                      title: 'Belum memilih jawaban',
                      message:
                          'Silakan pilih salah satu jawaban terlebih dahulu.',
                    );
                    return;
                  }

                  if (exerciseController.isCorrect) {
                    TLoaders.correctSnackBar(
                      title: 'Benar!',
                      message: 'Jawaban kamu tepat.',
                    );
                    Future.delayed(Duration(seconds: 2), () {
                      Get.offAll(() => NavigationMenu());
                    });
                  } else {
                    TLoaders.wrongSnackBar(
                      title: 'Salah!',
                      message: 'Perhatikan soalnya. Jangan terburu-buru.',
                    );
                    return;
                  }
                },
              );
            }
          }),
        ],
      ),
    );
  }
}
