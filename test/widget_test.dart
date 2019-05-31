// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:input_validation_app/main.dart';

void main() {
  testWidgets('Test inputs', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that three inputs exist.
    expect(find.text('Email:'), findsOneWidget);
    expect(find.text('Username:'), findsOneWidget);
    expect(find.text('Password:'), findsOneWidget);

    // Tap the 'Submit' button and verify validations failed.
    await tester.tap(find.text("Submit"));
    await tester.pump();
    expect(find.text('Not a Valid Email!'), findsOneWidget);
    expect(find.text('Not a Valid Username!'), findsOneWidget);
    expect(find.text('Not a Valid Password!'), findsOneWidget);
  });
}
