import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModeProvider with ChangeNotifier {
  bool _lightModeEnable = true;

  bool get lightModeEnable => _lightModeEnable;

  ModeProvider() {
    _loadThemeFromPrefs();
  }

  void _loadThemeFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _lightModeEnable = prefs.getBool('isLightMode') ?? true;
    notifyListeners();
  }

  void _saveThemeToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLightMode', _lightModeEnable);
  }

  void changeMode() {
    _lightModeEnable = !_lightModeEnable;
    _saveThemeToPrefs();
    notifyListeners();
  }
}
