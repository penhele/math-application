import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../provider/mode_provider.dart';
import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';
import '../../utils/helper/helper_function.dart';
import '../widget/menu_item.dart';
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
              widget: FlutterSwitch(
                width: 60.0,
                height: 30.0,
                toggleSize: 25.0,
                value: isDark,
                borderRadius: 30.0,
                padding: 2.0,
                activeColor: Colors.black87,
                inactiveColor: Colors.grey.shade300,
                activeToggleColor: MColors.white,
                inactiveToggleColor: MColors.white,
                activeIcon: Icon(Iconsax.moon, color: Colors.black, size: 16),
                inactiveIcon: Icon(Icons.sunny, color: Colors.orange, size: 16),
                onToggle: (val) {
                  Provider.of<ModeProvider>(
                    context,
                    listen: false,
                  ).changeMode();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}