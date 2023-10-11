// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';
import 'theme_data.dart';

class ThemeModel extends ChangeNotifier {
  Map<String, Color> currentTheme = darkTheme;

  void toggleTheme() {
    if (currentTheme == darkTheme)
      currentTheme = lightTheme;
    else if (currentTheme == lightTheme)
      currentTheme = neonTheme;
    else
      currentTheme = darkTheme;

    notifyListeners();
  }
}
