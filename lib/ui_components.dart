import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 42, height: 42,
                decoration: BoxDecoration(color: const Color(0xFFEEEEEE), borderRadius: BorderRadius.circular(12)),
                child: const Icon(Icons.menu, size: 20, color: Colors.black54),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('DELIVER TO', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(
                      0xFFFF7535), letterSpacing: 0.5)),
                  Row(
                    children: const [
                      Text('Halal Lab office', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87)),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down, size: 16, color: Colors.black54),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: 42, height: 42,
                decoration: BoxDecoration(color: const Color(0xFF1E2340), borderRadius: BorderRadius.circular(12)),
                child: const Icon(Icons.shopping_bag_outlined, size: 20, color: Colors.white),
              ),
              Positioned(
                right: 0, top: 0,
                child: Container(
                  width: 18, height: 18,
                  decoration: const BoxDecoration(color: Color(0xFFFF6B35), shape: BoxShape.circle),
                  child: const Center(child: Text('2', style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: const [
          Text('Hey Halal, ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87)),
          Text('Good Afternoon! 👋', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black87)),
        ],
      ),
    );
  }
}

class FoodSearchBar extends StatelessWidget {
  const FoodSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        height: 52,
        decoration: BoxDecoration(color: const Color(0xFFF2F2F2), borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            const SizedBox(width: 14),
            const Icon(Icons.search, color: Colors.black38, size: 22),
            const SizedBox(width: 8),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search dishes, restaurants',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
            const SizedBox(width: 14),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black87)),
          Row(
            children: const [
              Text('See All', style: TextStyle(fontSize: 13, color: Colors.black54)),
              SizedBox(width: 2),
              Icon(Icons.chevron_right, size: 16, color: Colors.black54),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  final String emoji;
  final bool isSelected;

  const CategoryChip({super.key, required this.label, required this.emoji, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFFF6B35) : Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 6),
          Text(label, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: isSelected ? Colors.white : Colors.black87)),
        ],
      ),
    );
  }
}

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: const [
          CategoryChip(label: 'All', emoji: '🔥', isSelected: true),
          CategoryChip(label: 'Hot Dog', emoji: '🌭'),
          CategoryChip(label: 'Burger', emoji: '🍔'),
          CategoryChip(label: 'Pizza', emoji: '🍕'),
          CategoryChip(label: 'Sushi', emoji: '🍣'),
          CategoryChip(label: 'Tacos', emoji: '🌮'),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String tags;
  final String rating;
  final String delivery;
  final String time;

  const RestaurantCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.tags,
    required this.rating,
    required this.delivery,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 10, offset: const Offset(0, 3))],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                imageUrl,
                width: double.infinity, height: 160, fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 160, color: const Color(0xFFDDDDDD),
                  child: const Center(child: Icon(Icons.restaurant, size: 48, color: Colors.white54)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black87)),
                  const SizedBox(height: 2),
                  Text(tags, style: const TextStyle(fontSize: 12, color: Colors.black45)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.star_rounded, size: 16, color: Color(0xFFFF6B35)),
                      const SizedBox(width: 4),
                      Text(rating, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black87)),
                      const SizedBox(width: 16),
                      const Icon(Icons.delivery_dining, size: 18, color: Colors.black54),
                      const SizedBox(width: 4),
                      Text(delivery, style: const TextStyle(fontSize: 13, color: Colors.black87)),
                      const SizedBox(width: 16),
                      const Icon(Icons.access_time_outlined, size: 16, color: Colors.black54),
                      const SizedBox(width: 4),
                      Text(time, style: const TextStyle(fontSize: 13, color: Colors.black87)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
