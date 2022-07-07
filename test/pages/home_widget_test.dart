import 'package:fluter_task_linux/pages/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Find one widht Scaffold in home', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
