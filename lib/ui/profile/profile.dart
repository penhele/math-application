import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:math_application/utils/helper/helper_function.dart';
import 'package:provider/provider.dart';

import '../../provider/mode_provider.dart';
import '../../utils/constant/sizes.dart';
import '../widget/section_heading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),

      body: Padding(
        padding: const EdgeInsets.all(MSizes.paddingAll),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MSectionHeading(title: 'Profile Settings'),
            const SizedBox(height: MSizes.spaceBtwItems),

            const MenuItem(title: 'Name', widget: Text('John Doe')),
            const SizedBox(height: MSizes.spaceBtwItems),
            const MenuItem(title: 'Email', widget: Text('john@doe.com')),

            const SizedBox(height: MSizes.spaceBtwSections),

            const MSectionHeading(title: 'General Settings'),
            const SizedBox(height: MSizes.spaceBtwItems),

            MenuItem(
              title: 'Dark Mode',
              widget: ElevatedButton.icon(
                onPressed: () {
                  Provider.of<ModeProvider>(
                    context,
                    listen: false,
                  ).changeMode();
                },
                icon: isDark
                    ? const Icon(Iconsax.moon)
                    : const Icon(Icons.sunny),
                label: isDark ? const Text('Dark') : const Text('Light'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.title, required this.widget});

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        widget,
      ],
    );
  }
}
