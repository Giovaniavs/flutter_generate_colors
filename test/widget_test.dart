import 'package:flutter/material.dart';
import 'package:flutter_generate_colors/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Test the existence of the Hello There text and the AnimatedContainer.',
    (WidgetTester tester) async {
      await tester.pumpWidget(const Main());

      expect(find.text('Hello there!'), findsOneWidget);
      expect(find.byType(AnimatedContainer), findsOneWidget);
    },
  );

  testWidgets(
    "Test the color changing",
    (WidgetTester tester) async {
      await tester.pumpWidget(const Main());

      // Finds the AnimatedContainer reference.
      Finder coloredContainerFinder = find.byType(AnimatedContainer);

      // Gets the AnimatedContainer widget.
      AnimatedContainer coloredContainerWidget =
          tester.firstWidget(coloredContainerFinder);

      // Gets the AnimatedContainer decoration style.
      final Decoration? firstColoredContainerDecoration =
          coloredContainerWidget.decoration;

      // Taps the AnimatedContainer to trigger the setState in the screen.
      await tester.tap(coloredContainerFinder);
      await tester.pump();

      // Now it is necessary to update the variables with the new values
      coloredContainerFinder = find.byType(AnimatedContainer);
      coloredContainerWidget = tester.firstWidget(coloredContainerFinder);

      // Consuming from the updated variables, gets the new decoration style.
      final Decoration? secondColoredContainerDecoration =
          coloredContainerWidget.decoration;

      // Compares the two decoration styles to check if they are different.
      expect(
        true,
        firstColoredContainerDecoration != secondColoredContainerDecoration,
      );
    },
  );
}
