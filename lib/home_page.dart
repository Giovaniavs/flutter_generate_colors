import 'package:flutter/material.dart';

/// Home page of the app where the background color changer will be displayed.
class HomePage extends StatefulWidget {
  /// Creates the parameter caller for the HomePage Widget.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = generateRandomColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          setState(() {
            _backgroundColor = generateRandomColor();
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          color: _backgroundColor,
          child: const Center(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

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
