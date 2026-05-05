import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_lab/main.dart';

void main() {
  testWidgets('App boots with category sections', (WidgetTester tester) async {
    await tester.pumpWidget(const WidgetLabApp());
    await tester.pumpAndSettle();

    expect(find.text('Widget Lab'), findsOneWidget);
    expect(find.text('Setup'), findsOneWidget);
    expect(find.text('Week 1'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Resource Stack'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Resource Stack'), findsOneWidget);
  });

  testWidgets('Tap topic opens detail placeholder', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const WidgetLabApp());
    await tester.pumpAndSettle();

    final Finder dayOneText = find.text('Day 1: Profile header card');
    await tester.ensureVisible(dayOneText.first);
    await tester.pumpAndSettle();

    await tester.tap(
      find.widgetWithText(ListTile, 'Day 1: Profile header card'),
    );
    await tester.pumpAndSettle();

    expect(find.text('What to learn'), findsOneWidget);
    expect(find.text('Official docs'), findsOneWidget);
    expect(find.text('Code snippet area'), findsOneWidget);
    expect(find.byTooltip('Back'), findsOneWidget);

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    expect(find.text('Week 1'), findsOneWidget);
  });
}
