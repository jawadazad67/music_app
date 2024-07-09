import 'package:flutter/material.dart';
import 'package:music_app/theme/dark_mode.dart';
import 'package:music_app/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = LightMode;

  //get theme
  ThemeData get themeData => _themeData;

//is dark mode
  bool get isDarkMode => _themeData == darkMode;

//set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

//update ui
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == LightMode) { 
      themeData = darkMode;
    } else {
      themeData = LightMode;
    }
  }
}
