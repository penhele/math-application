import 'package:flutter/material.dart';
import 'package:math_application/utils/constant/colors.dart';

import '../../utils/constant/sizes.dart';
import '../widget/course_container.dart';
import '../widget/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.paddingAll),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Materi
              MSectionHeading(title: 'Materi'),
              SizedBox(height: MSizes.spaceBtwItems),

              CourseContainer(),
              SizedBox(height: MSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}

