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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            child: ListTile(
              title: Text(recipe['title']),
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
    );
  }
}
