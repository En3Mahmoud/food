import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:food_delivery/main.dart';
import 'package:food_delivery/home_screen.dart';

void main() {
  testWidgets('App renders correctly smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FoodDeliveryApp());

    // Verify that the HomeScreen is rendered.
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
