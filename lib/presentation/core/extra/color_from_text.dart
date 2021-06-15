import 'package:flutter/material.dart';

final List<Color> _colorList = [
  Colors.deepOrange.shade300,
  Colors.purple.shade300,
  Colors.amber.shade300,
  Colors.lightGreen.shade300,
  Colors.pink.shade300,
  Colors.brown.shade300,
  Colors.indigo.shade300,
  Colors.lime.shade300,
];

Color colorGivenName(String name) {
  return _colorList[name.hashCode % 8];
}
