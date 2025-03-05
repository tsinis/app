import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Flutter logo is present', (tester) async {
    await tester.pumpWidget(const Main());

    expect(find.byType(FlutterLogo), findsOneWidget);
  });
}
