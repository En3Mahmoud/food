import 'package:flutter/material.dart';
import 'ui_components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppHeader(),
              const GreetingText(),
              const FoodSearchBar(),
              const SectionHeader(title: 'All Categories'),
              const CategoriesRow(),
              const SectionHeader(title: 'Open Restaurants'),
              const RestaurantCard(
                imageUrl: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=600&q=80',
                name: 'Rose Garden Restaurant',
                tags: 'Burger · Chicken · Rice · Wings',
                rating: '4.7',
                delivery: 'Free',
                time: '20 min',
              ),
              const RestaurantCard(
                imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&q=80',
                name: 'The Garden Bistro',
                tags: 'Salad · Vegan · Healthy · Bowl',
                rating: '4.5',
                delivery: 'Free',
                time: '25 min',
              ),
              const RestaurantCard(
                imageUrl: 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=600&q=80',
                name: 'Spice House',
                tags: 'Indian · Curry · Naan · Rice',
                rating: '4.6',
                delivery: '\$1.99',
                time: '30 min',
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
