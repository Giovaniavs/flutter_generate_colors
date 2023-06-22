import 'package:flutter/material.dart';

/// Function responsible for generate a random color with RGB values.
Color generateRandomColor() {
  const int limitRgbValue = 255;
  const double opacityConstantValue = 0.5;

  int redSpectrumValue = 0;
  int greenSpectrumValue = 0;
  int blueSpectrumValue = 0;

  redSpectrumValue = generateRandomNumberBetween(0, limitRgbValue);
  greenSpectrumValue = generateRandomNumberBetween(0, limitRgbValue);
  blueSpectrumValue = generateRandomNumberBetween(0, limitRgbValue);

  return Color.fromRGBO(
    redSpectrumValue,
    greenSpectrumValue,
    blueSpectrumValue,
    opacityConstantValue,
  );
}

/// Function responsible for generate a random number between two values.
int generateRandomNumberBetween(int initialValue, int limitValue) {
  final List<int> listOfLoadedNumbers = [];

  for (int i = initialValue; i < limitValue; i++) {
    listOfLoadedNumbers.add(i);
  }

  listOfLoadedNumbers.shuffle();

  return listOfLoadedNumbers.first;
}
