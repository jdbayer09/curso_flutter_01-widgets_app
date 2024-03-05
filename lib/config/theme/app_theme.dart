
import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.black,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.orange,
  Colors.purple,
  Colors.pink,
  Colors.deepPurple
];


class AppTheme {
  final int selectedColor;

  AppTheme(
    {
      this.selectedColor = 0
    }
  ):  assert(selectedColor >= 0, 'Selected color must be greater then 0'),
      assert(selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
  );
}
