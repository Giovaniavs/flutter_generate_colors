import 'package:flutter/material.dart';
import 'package:flutter_generate_colors/home_page.dart';

void main() {
  runApp(const Main());
}

/// The main app widget.
class Main extends StatelessWidget {
  /// Creates the parameter caller for the Main Widget.
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Random Color Generator',
      home: HomePage(),
    );
  }
}
