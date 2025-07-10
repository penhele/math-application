import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/sizes.dart';
import 'course_controller.dart';
import 'example/example.dart';
import 'exercise/exercise.dart';
import 'intro/intro.dart';
import 'page_button.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CourseController());

    return Scaffold(
      appBar: AppBar(title: Text('Pertambahan')),

      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              IntroPage(),
              ExamplePage(),
              ExercisePage()
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
                  Get.back();
                },
              );
            }
          }),
        ],
      ),
    );
  }
}
