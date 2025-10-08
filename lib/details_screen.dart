import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> recipe;

  const DetailsScreen({Key? key, required this.recipe}) : super(key: key);

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
    final ingredients = List<String>.from(recipe['ingredients']);
    final instructions = recipe['instructions'];
    final color = pastelColors[
        recipe['title'].hashCode % pastelColors.length]; // consistent pastel

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['title']),
        backgroundColor: color,
      ),
      body: Container(
        color: color.withOpacity(0.2), // soft pastel background
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingredients',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    ...ingredients.map((item) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text('• $item'),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instructions',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(instructions),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
