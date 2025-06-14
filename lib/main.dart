import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'navigation_menu.dart';
import 'provider/mode_provider.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ModeProvider())],

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: Provider.of<ModeProvider>(context).lightModeEnable
          ? ThemeMode.light
          : ThemeMode.dark,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: const NavigationMenu(),
    );
  }
}
