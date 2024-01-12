import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:note_taking_app/main.dart';
import 'package:note_taking_app/src/screens/splash_screen.dart';

void main() {
  testWidgets('Splash Screen Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the splash screen is rendered.
    expect(find.byType(SplashScreen), findsOneWidget);

    // Verify the presence of a specific widget in the splash screen.
    expect(find.byType(FlutterLogo), findsOneWidget);
    expect(find.text('Note-Taking App'), findsOneWidget);

    // You can add more specific tests based on your splash screen content.

    // Example: Verify that the background color is blue.
    expect(
      (tester.widget(find.byType(Scaffold)) as Scaffold).backgroundColor,
      equals(Colors.blue),
    );
  });
}

