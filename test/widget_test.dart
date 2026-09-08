// Basic Flutter widget test for the dead button app.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dead_button_app/main.dart';

void main() {
  testWidgets('Button renders and does nothing when pressed',
      (WidgetTester tester) async {
    await tester.pumpWidget(const DeadButtonApp());

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Press Me'), findsOneWidget);

    // Tapping must not throw and must not change anything on screen.
    await tester.tap(find.text('Press Me'));
    await tester.pump();

    expect(find.text('Press Me'), findsOneWidget);
  });
}
