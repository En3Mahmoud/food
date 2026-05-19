import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(const FoodDeliveryApp());

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white, fontFamily: 'sans-serif'),
      home: const HomeScreen(),
    );
  }
}
