import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> recipes = const [
    {
      'title': 'Spaghetti Carbonara',
      'ingredients': [
        'Spaghetti',
        'Eggs',
        'Pancetta',
        'Parmesan Cheese',
        'Black Pepper'
      ],
      'instructions':
          '1. Cook spaghetti.\n2. Fry pancetta.\n3. Mix eggs and cheese.\n4. Combine all and season with pepper.',
    },
    {
      'title': 'Chicken Alfredo',
      'ingredients': [
        'Fettuccine',
        'Chicken Breast',
        'Butter',
        'Garlic',
        'Cream',
        'Parmesan Cheese'
      ],
      'instructions':
          '1. Cook pasta.\n2. Sauté chicken.\n3. Add butter, garlic, and cream.\n4. Toss pasta with sauce and cheese.',
    },
    {
      'title': 'Vegetable Stir Fry',
      'ingredients': [
        'Broccoli',
        'Carrots',
        'Bell Peppers',
        'Soy Sauce',
        'Garlic',
        'Ginger'
      ],
      'instructions':
          '1. Chop vegetables.\n2. Stir-fry with garlic and ginger.\n3. Add soy sauce.\n4. Serve hot with rice.',
    },
    {
      'title': 'Pancakes',
      'ingredients': [
        'Flour',
        'Milk',
        'Eggs',
        'Baking Powder',
        'Sugar',
        'Butter'
      ],
      'instructions':
          '1. Mix dry ingredients.\n2. Whisk in milk and eggs.\n3. Cook on skillet until golden brown.',
    },
    {
      'title': 'Caprese Salad',
      'ingredients': [
        'Tomatoes',
        'Mozzarella',
        'Basil',
        'Olive Oil',
        'Salt',
        'Pepper'
      ],
      'instructions':
          '1. Slice tomatoes and mozzarella.\n2. Layer with basil.\n3. Drizzle with olive oil, salt, and pepper.',
    },
    {
      'title': 'Chocolate Chip Cookies',
      'ingredients': [
        'Flour',
        'Butter',
        'Sugar',
        'Eggs',
        'Chocolate Chips',
        'Vanilla Extract'
      ],
      'instructions':
          '1. Mix butter and sugar.\n2. Add eggs and vanilla.\n3. Stir in flour and chocolate chips.\n4. Bake until golden.',
    },
  ];

  final List<Color> pastelColors = const [
    Color(0xFFB8EBD0), // Mint green
    Color(0xFFFFC1CC), // Baby pink
    Color(0xFFBEE3F8), // Baby blue
    Color(0xFFE6E6FA), // Light lavender
    Color(0xFFF5F5DC), // Beige
    Color(0xFFFFF9B0), // Light yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipe Book'),
        backgroundColor: Colors.teal.shade200, // soft pastel teal
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          final cardColor = pastelColors[index % pastelColors.length];
          return Card(
            color: cardColor,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              title: Text(
                recipe['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
      backgroundColor: Colors.white70,
    );
  }
}
