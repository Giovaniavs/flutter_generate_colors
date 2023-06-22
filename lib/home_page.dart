import 'package:flutter/material.dart';
import 'package:flutter_generate_colors/utils/generator_functions.dart';

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
