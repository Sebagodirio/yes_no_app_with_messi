import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 45, 56, 212);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.greenAccent,
  Colors.teal,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0,
            'colors must be between 0 and ${_colorThemes.length}'),
        assert(selectedColor <= _colorThemes.length - 1,
            'colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
