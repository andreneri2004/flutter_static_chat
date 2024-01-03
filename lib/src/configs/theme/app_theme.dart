import 'package:flutter/material.dart';

const Color _customColor = Colors.indigo;

final List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.pink,
  Colors.amber,
  Colors.brown
];

class AppTheme {
  final int index;
  AppTheme({required this.index})
      : assert(index < _colorThemes.length,
            'Valor maior que o limite de cores da lista');

  ThemeData getTheme() {
    return ThemeData(
      colorSchemeSeed: (index > _colorThemes.length - 1)
          ? _colorThemes.last
          : _colorThemes[index],
    );
  }
}
