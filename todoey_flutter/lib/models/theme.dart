import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _selectedTheme;
  ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.tealAccent,
  );
  ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Colors.purpleAccent,
  );

  ThemeProvider({bool isDarkMode}){

    _selectedTheme = isDarkMode ? dark : light;
  }

  ThemeData get getTheme => _selectedTheme;
}