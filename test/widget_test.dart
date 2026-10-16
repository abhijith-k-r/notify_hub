import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notify_hub/main.dart';

void main() {
  testWidgets('Smoke test renders home screen components', (WidgetTester tester) async {
    await tester.pumpWidget(const NotifyHubApp());
    await tester.pumpAndSettle();

    expect(find.text('ABCD, New Delhi'), findsOneWidget);
    expect(find.text('Search for products/stores'), findsOneWidget);
    expect(find.text('What would you like to do today?'), findsOneWidget);
    expect(find.text('Top picks for you'), findsOneWidget);
    expect(find.text('Trending'), findsOneWidget);
  });

  testWidgets('Navigating to notification screen displays notification items', (WidgetTester tester) async {
    await tester.pumpWidget(const NotifyHubApp());
    await tester.pumpAndSettle();

    // Tap on the notification bell icon
    final bellFinder = find.byIcon(Icons.notifications_outlined);
    expect(bellFinder, findsOneWidget);
    await tester.tap(bellFinder, warnIfMissed: false);
    await tester.pumpAndSettle();

    // Verify Notifications Screen is displayed
    expect(find.text('Notifications'), findsOneWidget);
    expect(find.text('Your order has been assigned'), findsOneWidget);
    expect(find.text('Order Delivered'), findsOneWidget);
  });
}
