import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notify_hub/main.dart';

void main() {
  testWidgets('Smoke test renders home screen components and nearby stores', (WidgetTester tester) async {
    await tester.pumpWidget(const NotifyHubApp());
    await tester.pumpAndSettle();

    expect(find.text('ABCD, New Delhi'), findsOneWidget);
    expect(find.text('Search for products/stores'), findsOneWidget);
    expect(find.text('What would you like to do today?'), findsOneWidget);
    expect(find.text('Top picks for you'), findsOneWidget);
    expect(find.text('Trending'), findsOneWidget);
    expect(find.text('Nearby stores'), findsOneWidget);
    expect(find.text('View all stores'), findsOneWidget);
  });

  testWidgets('Navigating to notification screen displays notification items', (WidgetTester tester) async {
    await tester.pumpWidget(const NotifyHubApp());
    await tester.pumpAndSettle();

    final bellFinder = find.byIcon(Icons.notifications_outlined);
    expect(bellFinder, findsOneWidget);
    await tester.tap(bellFinder, warnIfMissed: false);
    await tester.pumpAndSettle();

    expect(find.text('Notifications'), findsOneWidget);
    expect(find.text('Your order has been assigned'), findsOneWidget);
  });

  testWidgets('Bottom navigation tabs switch between screens correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const NotifyHubApp());
    await tester.pumpAndSettle();

    // Tap Cart tab
    await tester.tap(find.byIcon(Icons.shopping_cart_outlined), warnIfMissed: false);
    await tester.pumpAndSettle();
    expect(find.text('Your Cart is Empty'), findsOneWidget);

    // Tap My Order tab
    await tester.tap(find.byIcon(Icons.receipt_long_outlined), warnIfMissed: false);
    await tester.pumpAndSettle();
    expect(find.text('No Orders Yet'), findsOneWidget);

    // Tap Account tab
    await tester.tap(find.byIcon(Icons.person_outline_rounded), warnIfMissed: false);
    await tester.pumpAndSettle();
    expect(find.text('Account & Settings'), findsOneWidget);

    // Tap Home tab to return
    await tester.tap(find.byIcon(Icons.home_filled), warnIfMissed: false);
    await tester.pumpAndSettle();
    expect(find.text('Nearby stores'), findsOneWidget);
  });
}
