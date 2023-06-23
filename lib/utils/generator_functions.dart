import 'package:flutter/material.dart';

/// Generate a random color with RGB values.
Color generateRandomColor() {
  const int limitRgbValue = 255;
  const double opacityConstantValue = 0.5;

  int redSpectrumValue = 0;
  int greenSpectrumValue = 0;
  int blueSpectrumValue = 0;

  redSpectrumValue = generateRandomNumberBetween(limitRgbValue);
  greenSpectrumValue = generateRandomNumberBetween(limitRgbValue);
  blueSpectrumValue = generateRandomNumberBetween(limitRgbValue);

  return Color.fromRGBO(
    redSpectrumValue,
    greenSpectrumValue,
    blueSpectrumValue,
    opacityConstantValue,
  );
}

/// Generate a random number between two values.
int generateRandomNumberBetween(int limitValue) {
  final int listLenght = limitValue + 1;
  final List<int> listOfLoadedNumbers = List.generate(listLenght, (i) => i);

  listOfLoadedNumbers.shuffle();

  return listOfLoadedNumbers.first;
}
