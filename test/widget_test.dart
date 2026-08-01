import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/views/home.dart' show HomeScreen;

void main() {
  testWidgets('home screen shows phone browsing content', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    expect(find.text('Browse Phones'), findsOneWidget);
    expect(find.text('Phone Store'), findsOneWidget);
  });
}
