import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];
const Color _customColor = Color(0xFF5C11D4);

class AppTheme {
  final int selecterColor;

  AppTheme({this.selecterColor = 0})
      : assert(selecterColor >= 0 && selecterColor <= _colorThemes.length - 1,
            'Colors must be between 0 ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selecterColor]
        // brightness: Brightness.dark
        );
  }
}
