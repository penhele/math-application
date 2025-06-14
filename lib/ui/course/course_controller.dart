import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  static CourseController get instance => Get.find();

  final pageController = PageController();
  var currentPage = 0.obs;

  final totalPages = 3;

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentPage.value = pageController.page?.round() ?? 0;
    });
  }

  void nextPage() {
    if (currentPage.value < totalPages - 1) {
      pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }
}
